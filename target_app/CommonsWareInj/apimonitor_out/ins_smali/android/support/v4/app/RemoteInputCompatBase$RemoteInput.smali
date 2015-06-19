.class public abstract Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInputCompatBase.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected abstract getAllowFreeFormInput()Z
.end method
.method protected abstract getChoices()[Ljava/lang/CharSequence;
.end method
.method protected abstract getExtras()Landroid/os/Bundle;
.end method
.method protected abstract getLabel()Ljava/lang/CharSequence;
.end method
.method protected abstract getResultKey()Ljava/lang/String;
.end method