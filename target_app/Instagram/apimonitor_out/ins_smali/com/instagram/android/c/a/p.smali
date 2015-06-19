.class public final Lcom/instagram/android/c/a/p;
.super Lcom/instagram/api/j/b;
.source "RoboCallRequest.java"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private e:I
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILjava/lang/String;Ljava/lang/String;Lcom/instagram/api/j/a;)V
.registers 8
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p6}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput p3, p0, Lcom/instagram/android/c/a/p;->e:I
iput-object p4, p0, Lcom/instagram/android/c/a/p;->a:Ljava/lang/String;
iput-object p5, p0, Lcom/instagram/android/c/a/p;->b:Ljava/lang/String;
return-void
.end method
.method private d(Lcom/instagram/api/j/j;)Ljava/lang/Void;
.registers 4
invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
const-string v1, "robocall_sent"
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v0
if-nez v0, :cond_17
invoke-direct {p0, p1}, Lcom/instagram/android/c/a/p;->e(Lcom/instagram/api/j/j;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/j/j;->a(Ljava/lang/String;)V
:cond_17
const/4 v0, 0x0
return-object v0
.end method
.method private e(Lcom/instagram/api/j/j;)Ljava/lang/String;
.registers 7
invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
const-string v1, "errors"
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-nez v0, :cond_17
invoke-virtual {p0}, Lcom/instagram/android/c/a/p;->l()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->unknown_error_occured:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_16
return-object v0
:cond_17
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_20
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_30
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "\n"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_30
:cond_4a
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_16
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
const-string v0, "phone_number"
iget-object v1, p0, Lcom/instagram/android/c/a/p;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "device_id"
iget-object v1, p0, Lcom/instagram/android/c/a/p;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/c/a/p;->d(Lcom/instagram/api/j/j;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 3
sget-object v0, Lcom/instagram/android/c/a/q;->a:[I
iget v1, p0, Lcom/instagram/android/c/a/p;->e:I
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_12
const-string v0, "accounts/robocall_phone/"
:goto_d
return-object v0
:pswitch_e
const-string v0, "accounts/robocall_user/"
goto :goto_d
nop
:pswitch_data_12
.packed-switch 0x1
:pswitch_e
.end packed-switch
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method