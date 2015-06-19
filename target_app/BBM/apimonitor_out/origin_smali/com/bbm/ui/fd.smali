.class final Lcom/bbm/ui/fd;
.super Ljava/lang/Object;
.source "QuickShareVoicenoteView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/QuickShareVoicenoteView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/fd;->a:Lcom/bbm/ui/QuickShareVoicenoteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/fd;->a:Lcom/bbm/ui/QuickShareVoicenoteView;

    invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->b(Lcom/bbm/ui/QuickShareVoicenoteView;)V

    return-void
.end method
