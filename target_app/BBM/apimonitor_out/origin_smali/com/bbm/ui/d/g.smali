.class public abstract Lcom/bbm/ui/d/g;
.super Ljava/lang/Object;
.source "ChannelUnsubscribeListener.java"

# interfaces
.implements Lcom/bbm/ui/d/c;


# instance fields
.field public a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "listRemove"

    iput-object v0, p0, Lcom/bbm/ui/d/g;->b:Ljava/lang/String;

    const-string v0, "channelUnsubscribeError"

    iput-object v0, p0, Lcom/bbm/ui/d/g;->c:Ljava/lang/String;

    const-string v0, "GeneralFailure"

    iput-object v0, p0, Lcom/bbm/ui/d/g;->d:Ljava/lang/String;

    const-string v0, "AlreadyUnsubscribed"

    iput-object v0, p0, Lcom/bbm/ui/d/g;->e:Ljava/lang/String;

    const-string v0, "ChannelListChanging"

    iput-object v0, p0, Lcom/bbm/ui/d/g;->f:Ljava/lang/String;

    const-string v0, "AuthorizationFailure"

    iput-object v0, p0, Lcom/bbm/ui/d/g;->g:Ljava/lang/String;

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

    const-string v1, "listRemove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    iget-object v1, p0, Lcom/bbm/ui/d/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/bbm/ui/d/d;->a(Ljava/lang/Object;Lcom/bbm/ui/d/c;)V

    invoke-virtual {p0}, Lcom/bbm/ui/d/g;->a()V

    :cond_18
    :goto_18
    return-void

    :cond_19
    const-string v1, "channelUnsubscribeError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    iget-object v2, p0, Lcom/bbm/ui/d/g;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, p0}, Lcom/bbm/ui/d/d;->a(Ljava/lang/Object;Lcom/bbm/ui/d/c;)V

    const-string v1, "AlreadyUnsubscribed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const v0, 0x7f0e021f

    :goto_3f
    invoke-virtual {p0, v0}, Lcom/bbm/ui/d/g;->a(I)V

    goto :goto_18

    :cond_43
    invoke-static {}, Lcom/bbm/util/ac;->a()Z

    move-result v0

    if-nez v0, :cond_4d

    const v0, 0x7f0e01b0

    goto :goto_3f

    :cond_4d
    const v0, 0x7f0e0220

    goto :goto_3f
.end method
