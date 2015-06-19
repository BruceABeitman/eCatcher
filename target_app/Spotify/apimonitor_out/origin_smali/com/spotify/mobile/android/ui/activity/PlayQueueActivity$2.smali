.class final Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    sget-object v0, Lcom/spotify/mobile/android/provider/m;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->a(Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->x:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v1, v2, v0, p4, p5}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;J)V

    return-void
.end method
