.class final Lcom/instagram/android/login/fragment/bw;
.super Landroid/text/LoginFilter$UsernameFilterGeneric;
.source "RegisterFragment.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/bw;-><init>()V
return-void
.end method
.method public final isAllowed(C)Z
.registers 3
const/16 v0, 0x20
if-eq p1, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method