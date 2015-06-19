.class public Lcom/flurry/sdk/dh;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private b:Z
.field private c:Ljava/util/List;
.field private d:J
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/dh;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/flurry/sdk/dh;->d:J
return-void
.end method
.method private static a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-eqz p0, :cond_30
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x4
if-le v0, v1, :cond_30
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
:goto_f
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, -0x4
if-ge v0, v2, :cond_1f
const/16 v2, 0x2a
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1f
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, -0x4
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_30
return-object p0
.end method
.method private a(Ljava/lang/String;Ljava/io/DataInputStream;)Z
.registers 13
const/4 v5, 0x2
const/4 v1, 0x0
const/4 v9, 0x3
invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v0
sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "File version: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v9, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
if-le v0, v5, :cond_53
const/4 v1, 0x6
sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Unknown agent file version: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unknown agent file version: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_53
if-lt v0, v5, :cond_fe
invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Loading API key: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {p1}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v9, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d3
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z
move-result v3
invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J
move-result-wide v4
sget-object v0, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
const-string v6, "Loading session reports"
invoke-static {v9, v0, v6}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
move v0, v1
:goto_93
invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v6
if-nez v6, :cond_ab
sget-object v0, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
const-string v1, "Persistent file loaded"
invoke-static {v9, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x1
invoke-virtual {p0, v3}, Lcom/flurry/sdk/dh;->a(Z)V
invoke-virtual {p0, v4, v5}, Lcom/flurry/sdk/dh;->a(J)V
invoke-virtual {p0, v2}, Lcom/flurry/sdk/dh;->a(Ljava/util/List;)V
:goto_aa
return v1
:cond_ab
new-array v6, v6, [B
invoke-virtual {p2, v6}, Ljava/io/DataInputStream;->readFully([B)V
new-instance v7, Lcom/flurry/sdk/de;
invoke-direct {v7, v6}, Lcom/flurry/sdk/de;-><init>([B)V
invoke-interface {v2, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V
sget-object v6, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Session report added: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
add-int/lit8 v0, v0, 0x1
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v9, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_93
:cond_d3
sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Api keys do not match, old: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {p1}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", new: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v9, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_aa
:cond_fe
const/4 v2, 0x5
sget-object v3, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Deleting old file version: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_aa
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/flurry/sdk/dh;->d:J
return-void
.end method
.method public a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const v0, 0xb5fa
:try_start_3
invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
const/4 v0, 0x2
invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/flurry/sdk/dh;->b:Z
invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
iget-wide v0, p0, Lcom/flurry/sdk/dh;->d:J
invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
iget-object v0, p0, Lcom/flurry/sdk/dh;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_23
if-ltz v1, :cond_57
iget-object v0, p0, Lcom/flurry/sdk/dh;->c:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/de;
invoke-virtual {v0}, Lcom/flurry/sdk/de;->a()[B
move-result-object v0
array-length v2, v0
add-int/lit8 v3, v2, 0x2
invoke-virtual {p1}, Ljava/io/DataOutputStream;->size()I
move-result v4
add-int/2addr v3, v4
const v4, 0xc350
if-le v3, v4, :cond_5f
const/4 v0, 0x6
sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "discarded sessions: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v2, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:cond_57
const/4 v0, 0x0
invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
:try_end_5b
.catchall {:try_start_3 .. :try_end_5b} :catchall_7c
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5b} :catch_69
invoke-static {p1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
return-void
:cond_5f
:try_start_5f
invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
:try_end_65
.catchall {:try_start_5f .. :try_end_65} :catchall_7c
.catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_65} :catch_69
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_23
:catch_69
move-exception v0
const/4 v1, 0x6
:try_start_6b
sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
const-string v3, ""
invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_7c
:try_end_7c
.catchall {:try_start_6b .. :try_end_7c} :catchall_7c
move-exception v0
invoke-static {p1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
throw v0
.end method
.method public a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/dh;->c:Ljava/util/List;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/flurry/sdk/dh;->b:Z
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/flurry/sdk/dh;->b:Z
return v0
.end method
.method public a(Ljava/io/DataInputStream;Ljava/lang/String;)Z
.registers 9
const/4 v0, 0x0
:try_start_1
invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I
move-result v1
const/4 v2, 0x4
sget-object v3, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Magic: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
const v2, 0xb5fa
if-ne v1, v2, :cond_2b
invoke-direct {p0, p2, p1}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;Ljava/io/DataInputStream;)Z
:try_end_26
.catchall {:try_start_1 .. :try_end_26} :catchall_47
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_26} :catch_34
move-result v0
:goto_27
invoke-static {p1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
return v0
:cond_2b
const/4 v1, 0x3
:try_start_2c
sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
const-string v3, "Unexpected file type"
invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:try_end_33
.catchall {:try_start_2c .. :try_end_33} :catchall_47
.catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_33} :catch_34
goto :goto_27
:catch_34
move-exception v0
const/4 v1, 0x6
:try_start_36
sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;
const-string v3, "Error when loading persistent file"
invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_47
.catchall {:try_start_36 .. :try_end_47} :catchall_47
:catchall_47
move-exception v0
invoke-static {p1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
throw v0
.end method
.method public b()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dh;->c:Ljava/util/List;
return-object v0
.end method
.method public c()J
.registers 3
iget-wide v0, p0, Lcom/flurry/sdk/dh;->d:J
return-wide v0
.end method