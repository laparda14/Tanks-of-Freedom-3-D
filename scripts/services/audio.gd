extends Node

const BUS_SFX = "SFX"
const BUS_MUSIC = "Music"

var samples = {}
var soundtracks = {}
var current_track = null

var master_switch = false
var sounds_enabled = true
var music_enabled = true

func _ready():
    self.register_sample("click", preload("res://assets/audio/menu.wav"))
    self.register_sample("menu_click", preload("res://assets/audio/menu_click.wav"))
    self.register_sample("menu_back", preload("res://assets/audio/menu_back.wav"))
    self.register_sample("explosion", preload("res://assets/audio/explosion.wav"))


    self.register_track("intro", preload("res://assets/audio/soundtrack/grand_beats_intro.ogg"))
    self.register_track("menu", preload("res://assets/audio/soundtrack/grand_beats_menu_soundtrack.ogg"))
    self.register_track("soundtrack_1", preload("res://assets/audio/soundtrack/grand_beats_soundtrack_1_metal.ogg"))
    self.register_track("soundtrack_2", preload("res://assets/audio/soundtrack/grand_beats_110.ogg"))
    self.register_track("soundtrack_3", preload("res://assets/audio/soundtrack/reduz_all_star_champion_sheep.ogg"))
    self.register_track("soundtrack_4", preload("res://assets/audio/soundtrack/reduz_like_a_whale.ogg"))
    self.register_track("soundtrack_5", preload("res://assets/audio/soundtrack/reduz_the_sorrows_of_a_crab.ogg"))
    self.register_track("soundtrack_6", preload("res://assets/audio/soundtrack/reduz_capybara_love.ogg"))


func play(name):
    if not self.master_switch or not self.sounds_enabled:
        return

    if not self.samples.has(name):
        return

    self.samples[name].play()

func track(name):
    if not self.master_switch or not self.music_enabled:
        return

    if not self.soundtracks.has(name):
        return

    self.stop()
    self.soundtracks[name].play()
    self.current_track = self.soundtracks[name]

func is_playing(name):
    if not self.music_enabled:
        return false

    if not self.soundtracks.has(name):
        return false

    return self.soundtracks[name].is_playing()

func stop(name=null):
    for track in self.soundtracks.values():
        track.stop()

    if name == null and self.current_track != null:
        self.current_track.stop()
        self.current_track = null
    elif self.soundtracks.has(name):
        self.soundtracks[name].stop()

func pause(name=null):
    if name == null and self.current_track != null:
        self.current_track.set_stream_paused(true)
    elif self.soundtracks.has(name):
        self.soundtracks[name].set_stream_paused(true)

func unpause(name=null):
    if name == null and self.current_track != null:
        self.current_track.set_stream_paused(false)
    elif self.soundtracks.has(name):
        self.soundtracks[name].set_stream_paused(false)


func register_sample(name, stream):
    if stream == null:
        return

    var sfx = AudioStreamPlayer.new()
    self.get_tree().get_root().call_deferred("add_child", sfx)
    sfx.set_stream(stream)
    sfx.set_bus(self.BUS_SFX)

    self.samples[name] = sfx


func register_track(name, stream):
    if stream == null:
        return

    var track = AudioStreamPlayer.new()
    self.get_tree().get_root().call_deferred("add_child", track)
    track.set_stream(stream)
    track.set_bus(self.BUS_MUSIC)

    self.soundtracks[name] = track
