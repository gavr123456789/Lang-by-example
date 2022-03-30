let audioTrack: 1 | 2 = 1

let audioType: "mono" | "stereo" = "mono"

audioType = "stereo"


interface Audio {
  audioType: "mono" | "stereo" 
  audioTrack: 1 | 2
}

function vbn(audio: Audio) {
  if (audio.audioTrack === 2 && audio.audioType === "stereo") {
    audio.audioType
  }
}