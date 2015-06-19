.class public abstract Lcom/bbm/ui/d/h;
.super Ljava/lang/Object;
.source "PostChannelCommentListener.java"

# interfaces
.implements Lcom/bbm/ui/d/c;


# instance fields
.field private final a:Ljava/lang/String;

.field public b:Ljava/lang/Object;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "postChannelCommentError"

    iput-object v0, p0, Lcom/bbm/ui/d/h;->a:Ljava/lang/String;

    const-string v0, "channelBlockedError"

    iput-object v0, p0, Lcom/bbm/ui/d/h;->c:Ljava/lang/String;

    const-string v0, "CommentsNotAllowed"

    iput-object v0, p0, Lcom/bbm/ui/d/h;->d:Ljava/lang/String;

    const-string v0, "PostIdInvalid"

    iput-object v0, p0, Lcom/bbm/ui/d/h;->e:Ljava/lang/String;

    const-string v0, "BlockedChannel"

    iput-object v0, p0, Lcom/bbm/ui/d/h;->f:Ljava/lang/String;

    const-string v0, "CommentIdInvalid"

    iput-object v0, p0, Lcom/bbm/ui/d/h;->g:Ljava/lang/String;

    const-string v0, "AuthorizationFailure"

    iput-object v0, p0, Lcom/bbm/ui/d/h;->h:Ljava/lang/String;

    const-string v0, "NetworkFailure"

    iput-object v0, p0, Lcom/bbm/ui/d/h;->i:Ljava/lang/String;

    const-string v0, "Pending"

    iput-object v0, p0, Lcom/bbm/ui/d/h;->j:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 2

    const-string v0, "CommentsNotAllowed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0e01cb

    :goto_b
    return v0

    :cond_c
    const-string v0, "AuthorizationFailure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x7f0e01c7

    goto :goto_b

    :cond_18
    const-string v0, "Pending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const v0, 0x7f0e01e7

    goto :goto_b

    :cond_24
    const-string v0, "NetworkFailure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const v0, 0x7f0e01ca

    goto :goto_b

    :cond_30
    const v0, 0x7f0e01cc

    goto :goto_b
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 4

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "sparseElements"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/bbm/ui/d/h;->a()V

    :cond_d
    :goto_d
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    iget-object v1, p0, Lcom/bbm/ui/d/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/bbm/ui/d/d;->a(Ljava/lang/Object;Lcom/bbm/ui/d/c;)V

    return-void

    :cond_19
    const-string v1, "postChannelCommentError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/ui/d/h;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/d/h;->a(I)V

    goto :goto_d

    :cond_31
    const-string v1, "channelBlockedError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "BlockedChannel"

    invoke-static {v0}, Lcom/bbm/ui/d/h;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/d/h;->a(I)V

    goto :goto_d
.end method
