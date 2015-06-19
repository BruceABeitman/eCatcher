.class public final Lcom/spotify/bouncer/proto/UserList;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# static fields
.field public static final DEFAULT_COUNT:Ljava/lang/Long;

.field public static final DEFAULT_INCLUDE_REQUESTING_USER:Ljava/lang/Boolean;

.field public static final DEFAULT_USERNAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final count:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x2
        b = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final include_requesting_user:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x3
        b = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final usernames:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x1
        b = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
        c = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/spotify/bouncer/proto/UserList;->DEFAULT_USERNAMES:Ljava/util/List;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/spotify/bouncer/proto/UserList;->DEFAULT_COUNT:Ljava/lang/Long;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/spotify/bouncer/proto/UserList;->DEFAULT_INCLUDE_REQUESTING_USER:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/spotify/bouncer/proto/UserList$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/g;)V

    iget-object v0, p1, Lcom/spotify/bouncer/proto/UserList$Builder;->usernames:Ljava/util/List;

    invoke-static {v0}, Lcom/spotify/bouncer/proto/UserList;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/bouncer/proto/UserList;->usernames:Ljava/util/List;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/UserList$Builder;->count:Ljava/lang/Long;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/UserList;->count:Ljava/lang/Long;

    iget-object v0, p1, Lcom/spotify/bouncer/proto/UserList$Builder;->include_requesting_user:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/spotify/bouncer/proto/UserList;->include_requesting_user:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/bouncer/proto/UserList$Builder;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/bouncer/proto/UserList;-><init>(Lcom/spotify/bouncer/proto/UserList$Builder;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0}, Lcom/spotify/bouncer/proto/UserList;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    instance-of v2, p1, Lcom/spotify/bouncer/proto/UserList;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/bouncer/proto/UserList;

    iget-object v2, p0, Lcom/spotify/bouncer/proto/UserList;->usernames:Ljava/util/List;

    iget-object v3, p1, Lcom/spotify/bouncer/proto/UserList;->usernames:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/UserList;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/spotify/bouncer/proto/UserList;->count:Ljava/lang/Long;

    iget-object v3, p1, Lcom/spotify/bouncer/proto/UserList;->count:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/UserList;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/spotify/bouncer/proto/UserList;->include_requesting_user:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/spotify/bouncer/proto/UserList;->include_requesting_user:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/spotify/bouncer/proto/UserList;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2b
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/spotify/bouncer/proto/UserList;->hashCode:I

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/bouncer/proto/UserList;->usernames:Ljava/util/List;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/spotify/bouncer/proto/UserList;->usernames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_f
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/spotify/bouncer/proto/UserList;->count:Ljava/lang/Long;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/spotify/bouncer/proto/UserList;->count:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/spotify/bouncer/proto/UserList;->include_requesting_user:Ljava/lang/Boolean;

    if-eqz v2, :cond_28

    iget-object v1, p0, Lcom/spotify/bouncer/proto/UserList;->include_requesting_user:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_28
    add-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/bouncer/proto/UserList;->hashCode:I

    :cond_2b
    return v0

    :cond_2c
    const/4 v0, 0x1

    goto :goto_f

    :cond_2e
    move v0, v1

    goto :goto_1b
.end method
