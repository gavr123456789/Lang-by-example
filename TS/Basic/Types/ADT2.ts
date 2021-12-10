export class AudioMetaDataOrPersonGroupEntity {
  Comment?: string;
  Duration?: string;
  ChannelsCount?: number;
  StreamNumber?: number;
  SampleRate?: number;
  CodecName?: string;
  CodecBitRate?: number;

// PersonGroup
  id: string = '';
  classDescriptionKey?: string;
  name: string = '';
  description?: string;
  status?: number;
  created_at: string = '';
  created_by: string = '';
  updated_at: string = '';
  updated_by: string = '';
}
