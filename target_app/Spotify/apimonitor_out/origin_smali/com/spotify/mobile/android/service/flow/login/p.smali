.class public final Lcom/spotify/mobile/android/service/flow/login/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(ZZZZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/spotify/mobile/android/service/flow/login/p;->a:Z

    iput-boolean p2, p0, Lcom/spotify/mobile/android/service/flow/login/p;->b:Z

    iput-boolean p3, p0, Lcom/spotify/mobile/android/service/flow/login/p;->c:Z

    iput-boolean p4, p0, Lcom/spotify/mobile/android/service/flow/login/p;->d:Z

    iput p5, p0, Lcom/spotify/mobile/android/service/flow/login/p;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/p;->e:I

    return v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/p;->a:Z

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/p;->b:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/p;->a:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/p;->d:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/p;->c:Z

    return v0
.end method
