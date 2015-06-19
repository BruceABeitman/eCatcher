.class public Lcom/google/android/gms/internal/eu;
.super Ljava/lang/Object;
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZLjava/lang/String;)Ljava/lang/String;
.registers 13
if-nez p3, :cond_64
const/4 v0, 0x0
:goto_3
if-eqz v0, :cond_47
const-string v1, "@string/"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_47
if-eqz p4, :cond_47
const/16 v1, 0x8
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
new-instance v3, Landroid/util/TypedValue;
invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V
:try_start_1e
invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, ":string/"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v4, v1, v3, v2}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
:try_end_3d
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_3d} :catch_69
:goto_3d
iget-object v1, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;
if-eqz v1, :cond_87
iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:cond_47
:goto_47
if-eqz p5, :cond_63
if-nez v0, :cond_63
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Required XML attribute \""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\" missing"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {p6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_63
return-object v0
:cond_64
invoke-interface {p3, p0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3
:catch_69
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Could not find resource for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {p6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_3d
:cond_87
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Resource "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " was not a string: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {p6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_47
.end method