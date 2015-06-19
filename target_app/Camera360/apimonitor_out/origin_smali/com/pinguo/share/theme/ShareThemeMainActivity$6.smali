.class Lcom/pinguo/share/theme/ShareThemeMainActivity$6;
.super Ljava/lang/Object;
.source "ShareThemeMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/theme/ShareThemeMainActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$6;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$6;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    invoke-virtual {v0}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->finish()V

    return-void
.end method
