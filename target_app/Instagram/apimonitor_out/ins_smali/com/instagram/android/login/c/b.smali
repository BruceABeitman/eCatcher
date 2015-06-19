.class public final Lcom/instagram/android/login/c/b;
.super Lcom/instagram/api/j/b;
.source "CreateAccountRequest.java"
.field public static a:I
.field private b:Lcom/instagram/android/login/a;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
.registers 6
sget v0, Lcom/facebook/av;->request_id_create_account:I
invoke-direct {p0, p1, p2, v0, p4}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
sput p3, Lcom/instagram/android/login/c/b;->a:I
return-void
.end method
.method private d(Lcom/instagram/api/j/j;)Lcom/instagram/user/c/a;
.registers 5
const/4 v0, 0x0
const-string v1, "created_user"
invoke-virtual {p1, v1}, Lcom/instagram/api/j/j;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1d
:try_start_9
const-string v0, "created_user"
const-class v1, Lcom/instagram/user/c/a;
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/j/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
:try_end_13
.catch Lcom/fasterxml/jackson/a/p; {:try_start_9 .. :try_end_13} :catch_14
:goto_13
return-object v0
:catch_14
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Unable parse created user account"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:cond_1d
invoke-direct {p0, p1}, Lcom/instagram/android/login/c/b;->e(Lcom/instagram/api/j/j;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/instagram/api/j/j;->a(Ljava/lang/String;)V
goto :goto_13
.end method
.method private e(Lcom/instagram/api/j/j;)Ljava/lang/String;
.registers 7
invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
const-string v1, "errors"
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-nez v0, :cond_17
invoke-virtual {p0}, Lcom/instagram/android/login/c/b;->l()Landroid/content/Context;
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
.method public final a(Lcom/instagram/android/login/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/c/b;->b:Lcom/instagram/android/login/a;
invoke-super {p0}, Lcom/instagram/api/j/b;->h()V
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 5
iget-object v1, p0, Lcom/instagram/android/login/c/b;->b:Lcom/instagram/android/login/a;
sget v0, Lcom/instagram/android/login/c/b;->a:I
sget v2, Lcom/instagram/android/login/c/d;->b:I
if-ne v0, v2, :cond_22
const/4 v0, 0x1
:goto_9
invoke-virtual {v1, p1, v0}, Lcom/instagram/android/login/a;->a(Lcom/instagram/common/a/c/b;Z)Lcom/instagram/common/a/c/b;
iget-object v0, p0, Lcom/instagram/android/login/c/b;->b:Lcom/instagram/android/login/a;
iget-object v0, v0, Lcom/instagram/android/login/a;->h:Landroid/graphics/Bitmap;
if-eqz v0, :cond_21
const-string v0, "profile_pic"
iget-object v1, p0, Lcom/instagram/android/login/c/b;->b:Lcom/instagram/android/login/a;
iget-object v1, v1, Lcom/instagram/android/login/a;->h:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/instagram/android/d/o;->a(Landroid/graphics/Bitmap;)[B
move-result-object v1
const-string v2, "profile_pic"
invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;[BLjava/lang/String;)V
:cond_21
return-void
:cond_22
const/4 v0, 0x0
goto :goto_9
.end method
.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/login/c/b;->d(Lcom/instagram/api/j/j;)Lcom/instagram/user/c/a;
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
sget-object v0, Lcom/instagram/android/login/c/c;->a:[I
sget v1, Lcom/instagram/android/login/c/b;->a:I
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_12
const-string v0, "accounts/create/"
:goto_d
return-object v0
:pswitch_e
const-string v0, "accounts/create_with_code/"
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
.method public final c(Lcom/instagram/api/j/j;)Z
.registers 3
invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method