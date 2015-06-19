.class public Lco/vine/android/widget/tabs/DummyTabFactory;
.super Ljava/lang/Object;
.source "DummyTabFactory.java"
.implements Landroid/widget/TabHost$TabContentFactory;
.field private final mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/widget/tabs/DummyTabFactory;->mContext:Landroid/content/Context;
return-void
.end method
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
.registers 5
const/4 v2, 0x0
new-instance v0, Landroid/view/View;
iget-object v1, p0, Lco/vine/android/widget/tabs/DummyTabFactory;->mContext:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V
invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V
return-object v0
.end method