.class public final Lcom/spotify/mobile/android/service/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/service/c/g;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->d:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, " \u2014 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/spotify/mobile/android/service/c/g;->d:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/e;->a:Ljava/lang/String;

    return-object v0
.end method
