.class final Lcom/spotify/mobile/android/ui/activity/upsell/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Z

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/ui/activity/upsell/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/ui/activity/upsell/o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/h;->a:Z

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/h;->b:Ljava/util/ArrayList;

    return-void
.end method
