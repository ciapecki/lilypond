from mido import MidiFile

midi = MidiFile('1.midi')

print(f'Type: {midi.type}')
print(f'Ticks per beat: {midi.ticks_per_beat}')
print(f'Number of tracks: {len(midi.tracks)}')

# Inspect first few events in the first track
for i, track in enumerate(midi.tracks[0][:10]):  # Adjust the number to see more events
    print(track)
