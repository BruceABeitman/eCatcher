.class public Lcom/bbm/d/ab;
.super Ljava/lang/Object;
.source "BbmdsProtocol.java"


# instance fields
.field private final a:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/ec;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/em;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/eo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/eu;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/util/bl;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/fg;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/bbm/d/a/f;

.field private final h:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/fl;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/fv;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/fw;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/fx;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/gd;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/gf;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/gh;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/gj;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/gm;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/bbm/d/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/b/a",
            "<",
            "Lcom/bbm/d/gp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bbm/f/a;Lcom/bbm/d/a/i;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/h;

    invoke-direct {v1}, Lcom/bbm/d/a/h;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "callEvent"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "category"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    const-string v2, "canDelete"

    const-string v4, "True"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "userUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "categoryContents"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "uri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "channel"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    const-string v2, "badge"

    const-string v4, "False"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "flagged"

    const-string v4, "False"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "hideUpdate"

    const-string v4, "False"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "isBlocked"

    const-string v4, "False"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "isPrivate"

    const-string v4, "False"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "notificationsEnabled"

    const-string v4, "True"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "officeHoursAlwaysAvailable"

    const-string v4, "True"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "channelCategory"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "channelConversation"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "channelInvitation"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "channelNotification"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "searchId"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "channelSearchQuery"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "channelStats"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "channelSubCategory"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "channelUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "postId"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "comment"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    const-string v2, "commentCount"

    const-string v4, "0"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "isBlocked"

    const-string v4, "False"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "conferenceInvitation"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    const-string v2, "status"

    const-string v4, "Pending"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "uri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "contact"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "conversationUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "conversation"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    const-string v2, "draftMessage"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "externalId"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "numMessages"

    const-string v4, "0"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "ownerUri"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "visible"

    const-string v4, "True"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "ephemeralMetaData"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "uri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "featuredChannel"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "channelUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "featuredPost"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "fileTransfer"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "channelUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "flaggedChannelPost"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "channelUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "postId"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "flaggedChannelPostComment"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "name"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "global"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "uri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "localChannel"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "localStickerPack"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "location"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "conv"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "message"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    const-string v2, "type"

    const-string v4, "Text"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "appId"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "partnerApp"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "pendingContact"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "pendingPost"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "picture"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "pin"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "pinToUser"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "uri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "platformDisabledUsers"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "uri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "platformIgnoredUsers"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "channelUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "post"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "imageId"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "postImage"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "boxId"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "profileBox"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "itemId"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "profileBoxItem"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "recentChannelPosts"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "recentUpdate"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    const-string v2, "tpaUri"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "uri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "recommendedChannel"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "imageId"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "sharedChannelPostImage"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "status"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "sticker"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    const-string v2, "hidden"

    const-string v4, "False"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "stickerImage"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "stickerPack"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "systemMessage"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "textMessageContext"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "uri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "tpa"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "tpaDownloadInvitation"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "userUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "conversationUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "typingUser"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "uri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "user"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->c:Z

    const-string v2, "avatarHash"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "currentStatus"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "displayName"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "ecoid"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "emailAddress"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "installedApps"

    const-string v4, "[]"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "location"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "maxVcardSize"

    const-string v4, "0"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "nickname"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "nowPlayingMessage"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "personalMessage"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "personalMessageTpaUri"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "pin"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "pins"

    const-string v4, "[]"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "timezone"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "userUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "type"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "typeUri"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "userBlockedItem"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "userKeyExchange"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "channelPost"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "channelPostComment"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    const-string v2, "commentCount"

    const-string v4, "0"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    const-string v2, "isBlocked"

    const-string v4, "False"

    invoke-virtual {v3, v2, v4}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/a/c;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "searchedChannel"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/bbm/d/a/c;

    const-string v4, "searchedChannelSubscriber"

    invoke-direct {v3, v4, v2}, Lcom/bbm/d/a/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v6, v3, Lcom/bbm/d/a/c;->b:Z

    iput-boolean v5, v3, Lcom/bbm/d/a/c;->c:Z

    invoke-virtual {v1, v3}, Lcom/bbm/d/a/h;->a(Lcom/bbm/d/a/c;)V

    invoke-direct {v0, p1, v1, p2}, Lcom/bbm/d/a/f;-><init>(Lcom/bbm/f/a;Lcom/bbm/d/a/h;Lcom/bbm/d/a/i;)V

    iput-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "channel"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/ec;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->a:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "channelStats"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/em;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->b:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "comment"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/eo;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->c:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "ephemeralMetaData"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/eu;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->d:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "global"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/util/bl;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->e:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "message"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/fg;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->f:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "partnerApp"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/fl;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->h:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "pinToUser"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/fv;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->i:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "post"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/fw;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->j:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "postImage"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/fx;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->k:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "sharedChannelPostImage"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/gd;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->l:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "sticker"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/gf;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->m:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "stickerImage"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/gh;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->n:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "stickerPack"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/gj;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->o:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "textMessageContext"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/gm;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->p:Lcom/bbm/d/a/b/a;

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    new-instance v1, Lcom/bbm/d/a/d;

    const-string v2, "user"

    invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/bbm/d/gp;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/b/a;

    iput-object v0, p0, Lcom/bbm/d/ab;->q:Lcom/bbm/d/a/b/a;

    return-void
.end method

.method private a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bbm/d/a/a;",
            ">(",
            "Lcom/bbm/d/a/d;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bbm/d/a/a;",
            ">(",
            "Lcom/bbm/d/a/d;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bbm/j/w",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/bbm/d/a/f;->b(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bbm/d/a/d;Ljava/lang/Class;Lcom/bbm/d/a/a/d;)Lcom/bbm/j/w;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bbm/d/a/a;",
            ">(",
            "Lcom/bbm/d/a/d;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/bbm/d/a/a/d",
            "<TT;>;)",
            "Lcom/bbm/j/w",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;Lcom/bbm/d/a/a/d;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bbm/d/a/d;ZLjava/lang/Class;)Lcom/bbm/j/x;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bbm/d/a/a;",
            ">(",
            "Lcom/bbm/d/a/d;",
            "Z",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bbm/j/x",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v6, v0, Lcom/bbm/d/a/f;->b:Lcom/bbm/d/a/c/e;

    iget-object v0, v6, Lcom/bbm/d/a/c/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/c/a;

    if-nez v0, :cond_27

    new-instance v0, Lcom/bbm/d/a/c/a;

    iget-object v1, v6, Lcom/bbm/d/a/c/e;->b:Lcom/bbm/d/a/h;

    iget-object v2, p1, Lcom/bbm/d/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a/h;->a(Ljava/lang/String;)Lcom/bbm/d/a/c;

    move-result-object v1

    iget-object v4, v6, Lcom/bbm/d/a/c/e;->c:Lcom/bbm/f/a;

    iget-object v2, v6, Lcom/bbm/d/a/c/e;->d:Lcom/bbm/util/dc;

    move v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bbm/d/a/c/a;-><init>(Lcom/bbm/d/a/c;ZLcom/bbm/d/a/d;Lcom/bbm/f/a;Ljava/lang/Class;)V

    iget-object v1, v6, Lcom/bbm/d/a/c/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/bbm/d/fg;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->f:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fg;

    return-object v0
.end method

.method public B(Ljava/lang/String;)Lcom/bbm/d/ff;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "location"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ff;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ff;

    return-object v0
.end method

.method public C()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fe;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "localChannel"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fe;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public C(Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/d/ab;->D(Ljava/lang/String;)Lcom/bbm/d/fe;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/fe;->b:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public D(Ljava/lang/String;)Lcom/bbm/d/fe;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "localChannel"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fe;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fe;

    return-object v0
.end method

.method public D()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/gl;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "systemMessage"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/gl;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/ge;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ge;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public E(Ljava/lang/String;)Lcom/bbm/util/bl;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->e:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/bl;

    return-object v0
.end method

.method public F()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fz;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "recentUpdate"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fz;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public F(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fb;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "flaggedChannelPostComment"

    invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fb;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public G()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fy;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "recentChannelPosts"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fy;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fa;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "flaggedChannelPost"

    invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fa;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public H(Ljava/lang/String;)Lcom/bbm/d/ex;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "fileTransfer"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ex;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ex;

    return-object v0
.end method

.method public H()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fq;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "pendingPost"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fq;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public I(Ljava/lang/String;)Lcom/bbm/d/eu;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->d:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/eu;

    return-object v0
.end method

.method public I()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "pendingContact"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fn;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/ew;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "featuredPost"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ew;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public J(Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/d/ab;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public K(Ljava/lang/String;)Lcom/bbm/d/es;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "conversation"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/es;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/es;

    return-object v0
.end method

.method public K()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/ev;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "featuredChannel"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ev;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public L()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/es;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "conversation"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/es;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public L(Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/d/ab;->M(Ljava/lang/String;)Lcom/bbm/d/er;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/er;->b:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public M(Ljava/lang/String;)Lcom/bbm/d/er;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "contact"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/er;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/er;

    return-object v0
.end method

.method public M()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/er;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "contact"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/er;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public N(Ljava/lang/String;)Lcom/bbm/d/ep;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "conferenceInvitation"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ep;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ep;

    return-object v0
.end method

.method public N()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/ei;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "channelNotification"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ei;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/lang/String;)Lcom/bbm/d/eo;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->c:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/eo;

    return-object v0
.end method

.method public O()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/ef;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "channelCategory"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ef;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public P()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/ea;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "category"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ea;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public P(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/en;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "channelSubCategory"

    invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/en;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public Q(Ljava/lang/String;)Lcom/bbm/d/em;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->b:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/em;

    return-object v0
.end method

.method public R(Ljava/lang/String;)Lcom/bbm/d/ei;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "channelNotification"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ei;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ei;

    return-object v0
.end method

.method public S(Ljava/lang/String;)Lcom/bbm/d/eg;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "channelInvitation"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/eg;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/eg;

    return-object v0
.end method

.method public T(Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/d/ab;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public U(Ljava/lang/String;)Lcom/bbm/d/ec;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->a:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    return-object v0
.end method

.method public V(Ljava/lang/String;)Lcom/bbm/j/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/eb;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "categoryContents"

    invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/eb;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public W(Ljava/lang/String;)Lcom/bbm/d/ea;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "category"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ea;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ea;

    return-object v0
.end method

.method public X(Ljava/lang/String;)Lcom/bbm/d/dx;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "callEvent"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/dx;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/dx;

    return-object v0
.end method

.method public a(Lcom/bbm/d/fm;)Lcom/bbm/j/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/fm;",
            ")",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fl;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "partnerApp"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fl;

    invoke-direct {p0, v0, v1, p1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;Lcom/bbm/d/a/a/d;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bbm/d/gg;)Lcom/bbm/j/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/gg;",
            ")",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/gf;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "sticker"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/gf;

    invoke-direct {p0, v0, v1, p1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;Lcom/bbm/d/a/a/d;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bbm/d/gi;)Lcom/bbm/j/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/gi;",
            ")",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/gh;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "stickerImage"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/gh;

    invoke-direct {p0, v0, v1, p1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;Lcom/bbm/d/a/a/d;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bbm/d/gk;)Lcom/bbm/j/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/gk;",
            ")",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/gj;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "stickerPack"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/gj;

    invoke-direct {p0, v0, v1, p1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;Lcom/bbm/d/a/a/d;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/bbm/j/x;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/gc;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "searchedChannelSubscriber"

    invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/gc;

    invoke-direct {p0, v0, p2, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;ZLjava/lang/Class;)Lcom/bbm/j/x;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bbm/d/dw;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    iget-object v1, p1, Lcom/bbm/d/dw;->a:Lcom/bbm/f/ab;

    invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ab;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/bbm/d/gp;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->q:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gp;

    return-object v0
.end method

.method public b(Ljava/lang/String;Z)Lcom/bbm/j/x;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/gb;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "searchedChannel"

    invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/gb;

    invoke-direct {p0, v0, p2, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;ZLjava/lang/Class;)Lcom/bbm/j/x;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Z)Lcom/bbm/j/x;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/el;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "channelPostComment"

    invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/el;

    invoke-direct {p0, v0, p2, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;ZLjava/lang/Class;)Lcom/bbm/j/x;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Z)Lcom/bbm/j/x;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/ek;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "channelPost"

    invoke-direct {v0, v1, p1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/ek;

    invoke-direct {p0, v0, p2, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;ZLjava/lang/Class;)Lcom/bbm/j/x;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/bbm/d/fv;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->i:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fv;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/d/ab;->h(Ljava/lang/String;)Lcom/bbm/d/fv;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/d/ab;->o(Ljava/lang/String;)Lcom/bbm/d/go;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/go;->c:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lcom/bbm/d/go;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "typingUser"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/go;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/go;

    return-object v0
.end method

.method public p(Ljava/lang/String;)Lcom/bbm/d/gm;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->p:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gm;

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/bbm/d/gj;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->o:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gj;

    return-object v0
.end method

.method public r(Ljava/lang/String;)Lcom/bbm/d/gf;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->m:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gf;

    return-object v0
.end method

.method public s(Ljava/lang/String;)Lcom/bbm/d/gd;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->l:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gd;

    return-object v0
.end method

.method public t(Ljava/lang/String;)Lcom/bbm/d/fz;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "recentUpdate"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fz;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fz;

    return-object v0
.end method

.method public u(Ljava/lang/String;)Lcom/bbm/d/fx;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->k:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fx;

    return-object v0
.end method

.method public v(Ljava/lang/String;)Lcom/bbm/d/fw;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->j:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fw;

    return-object v0
.end method

.method public w(Ljava/lang/String;)Lcom/bbm/d/fs;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "picture"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fs;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fs;

    return-object v0
.end method

.method public x(Ljava/lang/String;)Lcom/bbm/d/fn;
    .registers 4

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "pendingContact"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/fn;

    invoke-direct {p0, v0, p1, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/String;Ljava/lang/Class;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fn;

    return-object v0
.end method

.method public x()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/gs;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/a/d;

    const-string v1, "userBlockedItem"

    invoke-direct {v0, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/bbm/d/gs;

    invoke-direct {p0, v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/String;)Lcom/bbm/util/bh;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/d/ab;->z(Ljava/lang/String;)Lcom/bbm/d/fl;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public z(Ljava/lang/String;)Lcom/bbm/d/fl;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/ab;->h:Lcom/bbm/d/a/b/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a/b/a;->a(Ljava/lang/String;)Lcom/bbm/d/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fl;

    return-object v0
.end method
