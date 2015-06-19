.class public final Lcom/spotify/bouncer/proto/SocialStoryList;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# static fields
.field public static final DEFAULT_STORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/bouncer/proto/SocialStory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final stories:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x1
        c = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/bouncer/proto/SocialStory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/spotify/bouncer/proto/SocialStoryList;->DEFAULT_STORIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/spotify/bouncer/proto/SocialStoryList$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/g;)V

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialStoryList$Builder;->stories:Ljava/util/List;

    invoke-static {v0}, Lcom/spotify/bouncer/proto/SocialStoryList;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialStoryList;->stories:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/bouncer/proto/SocialStoryList$Builder;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/bouncer/proto/SocialStoryList;-><init>(Lcom/spotify/bouncer/proto/SocialStoryList$Builder;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0}, Lcom/spotify/bouncer/proto/SocialStoryList;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lcom/spotify/bouncer/proto/SocialStoryList;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStoryList;->stories:Ljava/util/List;

    check-cast p1, Lcom/spotify/bouncer/proto/SocialStoryList;

    iget-object v1, p1, Lcom/spotify/bouncer/proto/SocialStoryList;->stories:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/spotify/bouncer/proto/SocialStoryList;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/spotify/bouncer/proto/SocialStoryList;->hashCode:I

    if-eqz v0, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStoryList;->stories:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialStoryList;->stories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_f
    iput v0, p0, Lcom/spotify/bouncer/proto/SocialStoryList;->hashCode:I

    goto :goto_4

    :cond_12
    const/4 v0, 0x1

    goto :goto_f
.end method
