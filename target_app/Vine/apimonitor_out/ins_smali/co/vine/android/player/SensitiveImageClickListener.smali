.class public abstract Lco/vine/android/player/SensitiveImageClickListener;
.super Ljava/lang/Object;
.source "SensitiveImageClickListener.java"
.implements Landroid/view/View$OnClickListener;
.field protected final mExplicitDismissed:Ljava/util/HashSet;
.field protected mPosition:I
.method public constructor <init>(Ljava/util/HashSet;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/player/SensitiveImageClickListener;->mExplicitDismissed:Ljava/util/HashSet;
return-void
.end method
.method public setPosition(I)V
.registers 2
iput p1, p0, Lco/vine/android/player/SensitiveImageClickListener;->mPosition:I
return-void
.end method