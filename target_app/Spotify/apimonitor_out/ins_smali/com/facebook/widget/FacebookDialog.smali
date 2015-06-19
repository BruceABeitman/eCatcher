.class public final Lcom/facebook/widget/FacebookDialog;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Lcom/facebook/k;
.method public static a(Lcom/facebook/widget/FacebookDialog$PendingCall;I)Z
.registers 3
invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$PendingCall;->b()I
move-result v0
if-eq p1, v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
sget-object v0, Lcom/facebook/widget/FacebookDialog;->a:Lcom/facebook/k;
if-eqz v0, :cond_15
sget-object v0, Lcom/facebook/widget/FacebookDialog;->a:Lcom/facebook/k;
invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$PendingCall;->a()Ljava/util/UUID;
move-result-object v0
invoke-static {v0}, Lcom/facebook/k;->a(Ljava/util/UUID;)V
:cond_15
const/4 v0, 0x1
goto :goto_7
.end method