.class public Lcom/google/android/gms/drive/query/SearchableField;
.super Ljava/lang/Object;
.field public static final EH:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
.field public static final IS_PINNED:Lcom/google/android/gms/drive/metadata/MetadataField;
.field public static final LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
.field public static final MIME_TYPE:Lcom/google/android/gms/drive/metadata/MetadataField;
.field public static final MODIFIED_DATE:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
.field public static final PARENTS:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;
.field public static final STARRED:Lcom/google/android/gms/drive/metadata/MetadataField;
.field public static final TITLE:Lcom/google/android/gms/drive/metadata/MetadataField;
.field public static final TRASHED:Lcom/google/android/gms/drive/metadata/MetadataField;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/fs;->TITLE:Lcom/google/android/gms/drive/metadata/MetadataField;
sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->TITLE:Lcom/google/android/gms/drive/metadata/MetadataField;
sget-object v0, Lcom/google/android/gms/internal/fs;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/MetadataField;
sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/MetadataField;
sget-object v0, Lcom/google/android/gms/internal/fs;->TRASHED:Lcom/google/android/gms/drive/metadata/MetadataField;
sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->TRASHED:Lcom/google/android/gms/drive/metadata/MetadataField;
sget-object v0, Lcom/google/android/gms/internal/fs;->PARENTS:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;
sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->PARENTS:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;
sget-object v0, Lcom/google/android/gms/internal/ft;->EH:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->EH:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
sget-object v0, Lcom/google/android/gms/internal/fs;->STARRED:Lcom/google/android/gms/drive/metadata/MetadataField;
sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->STARRED:Lcom/google/android/gms/drive/metadata/MetadataField;
sget-object v0, Lcom/google/android/gms/internal/ft;->EE:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->MODIFIED_DATE:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
sget-object v0, Lcom/google/android/gms/internal/ft;->LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
sget-object v0, Lcom/google/android/gms/internal/fs;->IS_PINNED:Lcom/google/android/gms/drive/metadata/MetadataField;
sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->IS_PINNED:Lcom/google/android/gms/drive/metadata/MetadataField;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method