.class public final Lcom/google/android/gms/drive/MetadataChangeSet;
.super Ljava/lang/Object;


# instance fields
.field private final Dj:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->Dj:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/MetadataChangeSet$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-void
.end method


# virtual methods
.method public final eS()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->Dj:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-object v0
.end method

.method public final getIndexableText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->Dj:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/fs;->EC:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLastViewedByMeDate()Ljava/util/Date;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->Dj:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/ft;->LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->Dj:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/fs;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->Dj:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/fs;->TITLE:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final isPinned()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->Dj:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/fs;->IS_PINNED:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isStarred()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->Dj:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/fs;->STARRED:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isViewed()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->Dj:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/fs;->Ew:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
