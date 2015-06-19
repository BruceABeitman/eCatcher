.class public abstract Lcom/bbm/ui/d/e;
.super Ljava/lang/Object;
.source "ChannelSubscribeListener.java"

# interfaces
.implements Lcom/bbm/ui/d/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field c:Ljava/lang/Object;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/bbm/j/u;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "listAdd"

    iput-object v0, p0, Lcom/bbm/ui/d/e;->a:Ljava/lang/String;

    const-string v0, "channelSubscribeError"

    iput-object v0, p0, Lcom/bbm/ui/d/e;->b:Ljava/lang/String;

    const-string v0, "GeneralFailure"

    iput-object v0, p0, Lcom/bbm/ui/d/e;->d:Ljava/lang/String;

    const-string v0, "Alreadysubscribed"

    iput-object v0, p0, Lcom/bbm/ui/d/e;->e:Ljava/lang/String;

    const-string v0, "SubscriptionChanging"

    iput-object v0, p0, Lcom/bbm/ui/d/e;->f:Ljava/lang/String;

    const-string v0, "ChannelNotFound"

    iput-object v0, p0, Lcom/bbm/ui/d/e;->g:Ljava/lang/String;

    const-string v0, "PrivateChannelLimitReached"

    iput-object v0, p0, Lcom/bbm/ui/d/e;->h:Ljava/lang/String;

    const-string v0, "ChannelMinAgeVerificationFailure"

    iput-object v0, p0, Lcom/bbm/ui/d/e;->i:Ljava/lang/String;

    new-instance v0, Lcom/bbm/ui/d/f;

    invoke-direct {v0, p0, p1}, Lcom/bbm/ui/d/f;-><init>(Lcom/bbm/ui/d/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/d/e;->j:Lcom/bbm/j/u;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 5

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "channelSubscribeError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/d/e;->j:Lcom/bbm/j/u;

    invoke-virtual {v1}, Lcom/bbm/j/u;->e()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    iget-object v2, p0, Lcom/bbm/ui/d/e;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2, p0}, Lcom/bbm/ui/d/d;->a(Ljava/lang/Object;Lcom/bbm/ui/d/c;)V

    const-string v1, "Alreadysubscribed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const v0, 0x7f0e021a

    :goto_2d
    invoke-virtual {p0, v0}, Lcom/bbm/ui/d/e;->a(I)V

    :cond_30
    return-void

    :cond_31
    const-string v1, "ChannelNotFound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const v0, 0x7f0e017f

    goto :goto_2d

    :cond_3d
    const-string v1, "ChannelMinAgeVerificationFailure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const v0, 0x7f0e0219

    goto :goto_2d

    :cond_49
    invoke-static {}, Lcom/bbm/util/ac;->a()Z

    move-result v0

    if-nez v0, :cond_53

    const v0, 0x7f0e01b0

    goto :goto_2d

    :cond_53
    const v0, 0x7f0e021b

    goto :goto_2d
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iput-object p2, p0, Lcom/bbm/ui/d/e;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    invoke-virtual {v0, p1, p0, p2}, Lcom/bbm/ui/d/d;->a(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/d/e;->j:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method
