at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'reports/report.json'
    config.report_path = 'reports/JSON_API_REPORT'
    config.report_types = [:html]
    config.voice_commands = true
    config.color = 'green'
    config.additional_info = {DateTime: DateTime.now, Project: 'json-api-tests', Environment: ENVIRONMENT}
  end
  ReportBuilder.build_report
end