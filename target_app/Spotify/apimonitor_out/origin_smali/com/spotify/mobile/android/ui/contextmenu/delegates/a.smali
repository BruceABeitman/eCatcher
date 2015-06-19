.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

.field private e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

.field private f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    return-object p1
.end method

.method static a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/b;
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;-><init>()V

    iput-object p0, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a:Landroid/content/Context;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/b;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;B)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
    .registers 9

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    invoke-static {v4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    invoke-static {v5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    iget-object v6, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    invoke-static {v6}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    if-eq v2, v3, :cond_29

    move v0, v1

    goto :goto_4

    :cond_29
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    if-eq v2, v3, :cond_31

    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    if-eq v2, v3, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    move v0, v1

    goto :goto_4

    :cond_45
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
