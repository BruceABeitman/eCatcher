.class public final Lcom/spotify/bouncer/proto/Metadata;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# static fields
.field public static final DEFAULT_RESHARE_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SUMMARY:Ljava/lang/String; = ""


# instance fields
.field public final reactions:Lcom/spotify/bouncer/proto/SocialReaction;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x3
    .end annotation
.end field

.field public final reshare_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x2
        b = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final summary:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x1
        b = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/spotify/bouncer/proto/Metadata$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/g;)V

    iget-object v0, p1, Lcom/spotify/bouncer/proto/Metadata$Builder;->summary:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/Metadata;->summary:Ljava/lang/String;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/Metadata$Builder;->reshare_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/Metadata;->reshare_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/Metadata$Builder;->reactions:Lcom/spotify/bouncer/proto/SocialReaction;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/Metadata;->reactions:Lcom/spotify/bouncer/proto/SocialReaction;

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/bouncer/proto/Metadata$Builder;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/bouncer/proto/Metadata;-><init>(Lcom/spotify/bouncer/proto/Metadata$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/spotify/bouncer/proto/Metadata;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/bouncer/proto/Metadata;

    iget-object v2, p0, Lcom/spotify/bouncer/proto/Metadata;->summary:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/bouncer/proto/Metadata;->summary:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/Metadata;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/spotify/bouncer/proto/Metadata;->reshare_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/bouncer/proto/Metadata;->reshare_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/Metadata;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/spotify/bouncer/proto/Metadata;->reactions:Lcom/spotify/bouncer/proto/SocialReaction;

    iget-object v3, p1, Lcom/spotify/bouncer/proto/Metadata;->reactions:Lcom/spotify/bouncer/proto/SocialReaction;

    invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/Metadata;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2b
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/spotify/bouncer/proto/Metadata;->hashCode:I

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/bouncer/proto/Metadata;->summary:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/spotify/bouncer/proto/Metadata;->summary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/spotify/bouncer/proto/Metadata;->reshare_id:Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/spotify/bouncer/proto/Metadata;->reshare_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/spotify/bouncer/proto/Metadata;->reactions:Lcom/spotify/bouncer/proto/SocialReaction;

    if-eqz v2, :cond_28

    iget-object v1, p0, Lcom/spotify/bouncer/proto/Metadata;->reactions:Lcom/spotify/bouncer/proto/SocialReaction;

    invoke-virtual {v1}, Lcom/spotify/bouncer/proto/SocialReaction;->hashCode()I

    move-result v1

    :cond_28
    add-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/bouncer/proto/Metadata;->hashCode:I

    :cond_2b
    return v0

    :cond_2c
    move v0, v1

    goto :goto_f

    :cond_2e
    move v0, v1

    goto :goto_1b
.end method
