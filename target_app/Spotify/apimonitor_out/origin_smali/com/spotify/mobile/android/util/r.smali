.class final Lcom/spotify/mobile/android/util/r;
.super Lcom/loopj/android/http/w;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/util/bi;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/util/bi;)V
    .registers 2

    invoke-direct {p0}, Lcom/loopj/android/http/w;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/r;->a:Lcom/spotify/mobile/android/util/bi;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/r;->a:Lcom/spotify/mobile/android/util/bi;

    invoke-interface {v0, p2}, Lcom/spotify/mobile/android/util/bi;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/util/r;->a:Lcom/spotify/mobile/android/util/bi;

    invoke-interface {v0, p3, p2}, Lcom/spotify/mobile/android/util/bi;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
