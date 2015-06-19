.class public Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;
.super Ljava/lang/Object;
.source "ImapStore.java"
.field protected uidNext:I
.method protected constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->uidNext:I
return-void
.end method
.method protected static parse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;
.registers 10
const/4 v2, -0x1
if-eqz p0, :cond_56
new-instance v4, Ljava/util/StringTokenizer;
const-string v6, ";"
invoke-direct {v4, p0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:cond_a
:goto_a
invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
move-result v6
if-eqz v6, :cond_56
new-instance v3, Ljava/util/StringTokenizer;
invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v6
const-string v7, "="
invoke-direct {v3, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
move-result v6
if-eqz v6, :cond_a
invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v1
const-string v6, "uidNext"
invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_a
invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
move-result v6
if-eqz v6, :cond_a
invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v5
:try_start_37
invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3c
move-result v2
goto :goto_a
:catch_3c
move-exception v0
const-string v6, "k9"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Unable to part uidNext value "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_a
:cond_56
new-instance v6, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;
invoke-direct {v6, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;-><init>(I)V
return-object v6
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "uidNext="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->uidNext:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method