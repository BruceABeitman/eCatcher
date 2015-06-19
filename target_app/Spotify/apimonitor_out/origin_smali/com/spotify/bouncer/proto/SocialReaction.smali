.class public final Lcom/spotify/bouncer/proto/SocialReaction;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ID:Ljava/lang/String; = ""


# instance fields
.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x1
        b = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final likes:Lcom/spotify/bouncer/proto/UserList;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x2
    .end annotation
.end field

.field public final reshares:Lcom/spotify/bouncer/proto/UserList;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x4
    .end annotation
.end field

.field public final streams:Lcom/spotify/bouncer/proto/UserList;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x3
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/spotify/bouncer/proto/SocialReaction$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/g;)V

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->id:Ljava/lang/String;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->likes:Lcom/spotify/bouncer/proto/UserList;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->likes:Lcom/spotify/bouncer/proto/UserList;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->streams:Lcom/spotify/bouncer/proto/UserList;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->streams:Lcom/spotify/bouncer/proto/UserList;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/SocialReaction$Builder;->reshares:Lcom/spotify/bouncer/proto/UserList;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->reshares:Lcom/spotify/bouncer/proto/UserList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/bouncer/proto/SocialReaction$Builder;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/bouncer/proto/SocialReaction;-><init>(Lcom/spotify/bouncer/proto/SocialReaction$Builder;)V

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
    instance-of v2, p1, Lcom/spotify/bouncer/proto/SocialReaction;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/bouncer/proto/SocialReaction;

    iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialReaction;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialReaction;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialReaction;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialReaction;->likes:Lcom/spotify/bouncer/proto/UserList;

    iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialReaction;->likes:Lcom/spotify/bouncer/proto/UserList;

    invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialReaction;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialReaction;->streams:Lcom/spotify/bouncer/proto/UserList;

    iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialReaction;->streams:Lcom/spotify/bouncer/proto/UserList;

    invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialReaction;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialReaction;->reshares:Lcom/spotify/bouncer/proto/UserList;

    iget-object v3, p1, Lcom/spotify/bouncer/proto/SocialReaction;->reshares:Lcom/spotify/bouncer/proto/UserList;

    invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/SocialReaction;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_35
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->hashCode:I

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->id:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->likes:Lcom/spotify/bouncer/proto/UserList;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->likes:Lcom/spotify/bouncer/proto/UserList;

    invoke-virtual {v0}, Lcom/spotify/bouncer/proto/UserList;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->streams:Lcom/spotify/bouncer/proto/UserList;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->streams:Lcom/spotify/bouncer/proto/UserList;

    invoke-virtual {v0}, Lcom/spotify/bouncer/proto/UserList;->hashCode()I

    move-result v0

    :goto_28
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/spotify/bouncer/proto/SocialReaction;->reshares:Lcom/spotify/bouncer/proto/UserList;

    if-eqz v2, :cond_35

    iget-object v1, p0, Lcom/spotify/bouncer/proto/SocialReaction;->reshares:Lcom/spotify/bouncer/proto/UserList;

    invoke-virtual {v1}, Lcom/spotify/bouncer/proto/UserList;->hashCode()I

    move-result v1

    :cond_35
    add-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/bouncer/proto/SocialReaction;->hashCode:I

    :cond_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_f

    :cond_3b
    move v0, v1

    goto :goto_1b

    :cond_3d
    move v0, v1

    goto :goto_28
.end method
