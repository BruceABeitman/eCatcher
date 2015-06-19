.class Lcom/pinguo/share/at/AtActivity$6;
.super Ljava/lang/Object;
.source "AtActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/at/AtActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/at/AtActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/at/AtActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/at/AtActivity$6;->this$0:Lcom/pinguo/share/at/AtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$6;->this$0:Lcom/pinguo/share/at/AtActivity;

    #calls: Lcom/pinguo/share/at/AtActivity;->clearSearchParam()V
    invoke-static {v0}, Lcom/pinguo/share/at/AtActivity;->access$20(Lcom/pinguo/share/at/AtActivity;)V

    return-void
.end method
