.class Lcom/spotify/mobile/android/service/connections/MetadataConnection$1;
.super Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/connections/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/connections/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/connections/g;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/MetadataConnection$1;->a:Lcom/spotify/mobile/android/service/connections/g;

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/MetadataConnection$1;->a:Lcom/spotify/mobile/android/service/connections/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/g;->b()V

    return-void
.end method
