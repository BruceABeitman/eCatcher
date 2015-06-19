.class public Lcom/twidroid/a/d;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "LoadAvatarImageTask"


# instance fields
.field private final b:Lcom/twidroid/ui/widgets/CachedImageView;

.field private c:Lcom/twidroid/model/twitter/c;

.field private d:Lcom/twidroid/model/a;


# direct methods
.method public constructor <init>(Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/a;)V
    .registers 4

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    iput-object p1, p0, Lcom/twidroid/a/d;->b:Lcom/twidroid/ui/widgets/CachedImageView;

    iput-object p2, p0, Lcom/twidroid/a/d;->c:Lcom/twidroid/model/twitter/c;

    iput-object p3, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10

    const/4 v1, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twidroid/a/d;->b:Lcom/twidroid/ui/widgets/CachedImageView;

    if-nez v0, :cond_b

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/twidroid/a/d;->c:Lcom/twidroid/model/twitter/c;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/twidroid/a/d;->c:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/twidroid/a/d;->c:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    :cond_28
    iget-object v0, p0, Lcom/twidroid/a/d;->c:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    :cond_33
    iget-object v0, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    iget-object v0, v0, Lcom/twidroid/model/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    iget-object v0, v0, Lcom/twidroid/model/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4c

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    :cond_4c
    :try_start_4c
    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    iget-object v1, v1, Lcom/twidroid/model/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twidroid/model/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    iget-object v2, v2, Lcom/twidroid/model/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    iget-wide v2, v2, Lcom/twidroid/model/a;->c:J

    iget-object v4, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    iget-object v4, v4, Lcom/twidroid/model/a;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    iget v6, v6, Lcom/twidroid/model/a;->f:I

    invoke-virtual/range {v0 .. v6}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;JLjava/lang/String;ZI)V

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    if-eqz v0, :cond_f6

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_f6

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twidroid/b/a/b;->a(Z)I

    move-result v1

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->a(Z)I

    move-result v0

    const-string v2, "Mute"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "source"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "profile"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "user"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "total mutes"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    add-int v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "total hashtags"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v0, 0x8

    const-string v4, "total users"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_f6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_fa} :catch_fd

    move-result-object v0

    goto/16 :goto_a

    :catch_fd
    move-exception v0

    const-string v1, "LoadAvatarImageTask"

    const-string v2, "error getting user"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_a

    :cond_10b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_a
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/a/d;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, ""

    iget-object v1, p0, Lcom/twidroid/a/d;->c:Lcom/twidroid/model/twitter/c;

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/twidroid/a/d;->c:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->v()Ljava/lang/String;

    move-result-object v0

    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/twidroid/a/d;->b:Lcom/twidroid/ui/widgets/CachedImageView;

    new-instance v2, Lcom/twidroid/a/d$1;

    invoke-direct {v2, p0}, Lcom/twidroid/a/d$1;-><init>(Lcom/twidroid/a/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/ui/widgets/d;)V

    :cond_1c
    return-void

    :cond_1d
    iget-object v1, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/twidroid/a/d;->d:Lcom/twidroid/model/a;

    iget-object v0, v0, Lcom/twidroid/model/a;->d:Ljava/lang/String;

    goto :goto_12
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twidroid/a/d;->a(Ljava/lang/Boolean;)V

    return-void
.end method
