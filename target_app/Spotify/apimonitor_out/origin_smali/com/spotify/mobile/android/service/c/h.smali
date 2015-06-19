.class public final Lcom/spotify/mobile/android/service/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/service/c/g;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->d:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->d:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->c:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, " \u2014 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->c:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->c:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/h;->b:Ljava/lang/String;

    return-object v0
.end method
