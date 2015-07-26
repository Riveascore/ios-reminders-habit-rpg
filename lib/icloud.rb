#!/usr/bin/env ruby
# vim: et ts=2 sw=2

module ICloud
end

require "lib/icloud/core_ext/array"
require "lib/icloud/core_ext/date_time"
require "lib/icloud/core_ext/object"

require "lib/icloud/helpers/date_helpers"
require "lib/icloud/helpers/guid"
require "lib/icloud/helpers/inflections"
require "lib/icloud/helpers/proxy"

require "lib/icloud/record"
require "lib/icloud/records/alarm"
require "lib/icloud/records/collection"
require "lib/icloud/records/dsinfo"
require "lib/icloud/records/reminder"

require "lib/icloud/porcelain/reminder"

require "lib/icloud/errors"
require "lib/icloud/pool"
require "lib/icloud/session"
require "lib/icloud/version"
