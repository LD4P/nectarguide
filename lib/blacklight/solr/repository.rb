module Blacklight::Solr
  class Repository < Blacklight::AbstractRepository

    # Include class of the same name in Blacklight gem
    gem_dir = Gem::Specification.find_by_name("blacklight").gem_dir
    require "#{gem_dir}/lib/blacklight/solr/repository.rb"
  
    # Modify function of the same name in Blacklight
    def suggestions(request_params)

      domain = "hjk54-dev.library.cornell.edu"
      path = "/solr/suggest/select"
      query = "?q=" + request_params[:q]
      port = 8983

      resp = Net::HTTP.get(domain, path+query, port)
      parsed_resp = JSON.parse(resp)
      results = parsed_resp['response']['docs']

      results_strings = []
      for result in results
        result_string = result['label_s']
        results_strings << '{"term": "'+result_string+'","weight": 2199,"payload": ""}'
      end
      output_json = '{"responseHeader": {"status": 0,"QTime": 35},"command": "build","suggest": {"'+suggester_name+'": {"'+request_params[:q]+'": {"numFound": 3,"suggestions": ['+results_strings.join(',')+']}}}}'

      suggest_results = JSON.parse(output_json)
      Blacklight::Suggest::Response.new suggest_results, request_params, suggest_handler_path, suggester_name
    end

  end
end
