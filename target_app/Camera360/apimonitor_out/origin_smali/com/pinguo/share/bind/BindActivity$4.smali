.class Lcom/pinguo/share/bind/BindActivity$4;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/bind/BindActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/bind/BindActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/bind/BindActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/BindActivity$4;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$4;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-virtual {v0}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveSelectedBind(Landroid/content/Context;Z)V

    return-void
.end method
