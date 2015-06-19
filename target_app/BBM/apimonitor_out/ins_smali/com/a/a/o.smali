.class public final Lcom/a/a/o;
.super Ljava/lang/Object;
.source "VCardEntry.java"
.implements Lcom/a/a/i;
.field public final a:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/a/a/o;->a:Ljava/lang/String;
return-void
.end method
.method public final a()Lcom/a/a/k;
.registers 2
sget-object v0, Lcom/a/a/k;->k:Lcom/a/a/k;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
instance-of v0, p1, Lcom/a/a/o;
if-nez v0, :cond_a
const/4 v0, 0x0
goto :goto_3
:cond_a
check-cast p1, Lcom/a/a/o;
iget-object v0, p0, Lcom/a/a/o;->a:Ljava/lang/String;
iget-object v1, p1, Lcom/a/a/o;->a:Ljava/lang/String;
invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
goto :goto_3
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/a/a/o;->a:Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/a/a/o;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "note: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/a/a/o;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method