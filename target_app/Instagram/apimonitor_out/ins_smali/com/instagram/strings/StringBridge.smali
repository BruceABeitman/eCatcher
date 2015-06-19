.class public Lcom/instagram/strings/StringBridge;
.super Ljava/lang/Object;
.source "StringBridge.java"
.field private static a:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/instagram/strings/StringBridge;->a:Z
:try_start_3
const-string v0, "cryptox"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "scrambler"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "strings"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
:goto_12
:try_end_12
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const/4 v0, 0x1
sput-boolean v0, Lcom/instagram/strings/StringBridge;->a:Z
goto :goto_12
.end method
.method public static a()Z
.registers 1
sget-boolean v0, Lcom/instagram/strings/StringBridge;->a:Z
return v0
.end method
.method public static native getInstagramString(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public static native getSignatureString([B)Ljava/lang/String;
.end method