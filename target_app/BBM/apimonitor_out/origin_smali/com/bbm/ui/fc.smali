.class final Lcom/bbm/ui/fc;
.super Ljava/lang/Object;
.source "QuickShareVoicenoteView.java"

# interfaces
.implements Lcom/bbm/util/fi;


# instance fields
.field final synthetic a:Lcom/bbm/ui/QuickShareVoicenoteView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/fc;->a:Lcom/bbm/ui/QuickShareVoicenoteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/fc;->a:Lcom/bbm/ui/QuickShareVoicenoteView;

    invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->a(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
