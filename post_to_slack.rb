# frozen_string_literal: true

require 'date'
require 'slack-notifier'

# input your web hook url
WEB_HOOK_URL = ''

# 実行結果をSlack通知する
notifier = Slack::Notifier.new(WEB_HOOK_URL,
                               channel: 'general',
                               username: 'TEST')
tests = []
300.times do |i|
  tests.push("[#{i}]12345678901234567890123456789012345678901234567890\n")
end

title = fallback = "TEST!!!"

#attachments = {
#  fallback: fallback,
#  title: title,
#  text: tests.join,
#  color: 'good'
#}
#notifier.post(attachments: attachments)
notifier.post(text: tests.join)
