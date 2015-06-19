.class Lcom/pinguo/share/theme/ShareThemeMainActivity$4;
.super Ljava/lang/Object;
.source "ShareThemeMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/theme/ShareThemeMainActivity;->createDownloadAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$4;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$4;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
    invoke-static {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$13(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeNetConsole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/theme/ThemeNetConsole;->cancelThread()V

    return-void
.end method
