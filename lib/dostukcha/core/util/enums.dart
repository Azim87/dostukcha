enum Status { SMILE, RIGHT, LEFT, NEUTRAL }

enum ContactRelationType { select, mother, father, sister, brother, colleague }

enum DocumentType { PRIVACY_POLICY, DATA_COLLECTION_AGREEMENT }

enum UploadFileType { Selfie, Document, SelfieWithDocument}

extension ContactRelationTypeExt on ContactRelationType {
  String getContactRelationType() => switch (this) {
      ContactRelationType.mother => 'Мать',
      ContactRelationType.father => 'Отец',
      ContactRelationType.brother => 'Брат',
      ContactRelationType.sister => 'Сестра',
      ContactRelationType.colleague => 'Коллега',
      ContactRelationType.select => 'Кем вам приходиться'
    };
}
