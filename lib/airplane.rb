require 'pry'

class Airplane
  attr_reader :type, :wing_loading, :hp, :engine_status, :takeoff, :landed
  attr_writer :engine_status, :takeoff, :landed
  def initialize(type, wing_loading, hp)
    @type = type
    @wing_loading = wing_loading
    @hp = hp
    @engine_status = 'off'
    @takeoff = 'no'
    @landed = 'yes'
  end

  def land
    if @landed == 'no' && @takeoff == 'yes'
      @landed = 'yes'
      'you landed.'
    else
      'you are flying.'
    end
  end

  def start
    if @engine_status == 'off'
      @engine_status = 'on'
      'engines turned on.'
    else
      'engines are already running.'
    end

  end


  def takeoff
    if @takeoff == 'no' && @engine_status == 'on'
      @takeoff = 'yes'
      @landed = 'no'
      'you are flying.'
    else
      'you did not takeoff.'
    end
  end

end
