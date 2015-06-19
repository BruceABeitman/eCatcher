.class final Lcom/spotify/mobile/android/spotlets/search/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/search/b;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/spotify/mobile/android/spotlets/search/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/b;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;Z)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/b$6;->d:Lcom/spotify/mobile/android/spotlets/search/b;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/b$6;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/search/b$6;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/spotify/mobile/android/spotlets/search/b$6;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$6;->d:Lcom/spotify/mobile/android/spotlets/search/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b$6;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/b$6;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/search/b$6;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;Z)V

    return-void
.end method
