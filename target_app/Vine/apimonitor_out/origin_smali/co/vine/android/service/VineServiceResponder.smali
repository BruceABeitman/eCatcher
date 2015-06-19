.class public abstract Lco/vine/android/service/VineServiceResponder;
.super Landroid/os/Binder;
.source "VineServiceResponder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V
.end method
