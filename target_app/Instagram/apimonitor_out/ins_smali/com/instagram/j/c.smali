.class final Lcom/instagram/j/c;
.super Ljava/lang/Object;
.source "AppDataUsageTracker.java"
.field private final a:J
.field private final b:J
.field private final c:J
.field private final d:Ljava/lang/String;
.method private constructor <init>(JJJLjava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/instagram/j/c;->a:J
iput-wide p3, p0, Lcom/instagram/j/c;->b:J
iput-wide p5, p0, Lcom/instagram/j/c;->c:J
iput-object p7, p0, Lcom/instagram/j/c;->d:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(JJJLjava/lang/String;B)V
.registers 9
invoke-direct/range {p0 .. p7}, Lcom/instagram/j/c;-><init>(JJJLjava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/j/c;)J
.registers 3
iget-wide v0, p0, Lcom/instagram/j/c;->a:J
return-wide v0
.end method
.method static synthetic b(Lcom/instagram/j/c;)J
.registers 3
iget-wide v0, p0, Lcom/instagram/j/c;->b:J
return-wide v0
.end method
.method static synthetic c(Lcom/instagram/j/c;)J
.registers 3
iget-wide v0, p0, Lcom/instagram/j/c;->c:J
return-wide v0
.end method
.method static synthetic d(Lcom/instagram/j/c;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/j/c;->d:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/fasterxml/jackson/a/h;)V
.registers 7
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
const-string v0, "network_mode"
iget-object v1, p0, Lcom/instagram/j/c;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "bytes_received"
iget-wide v1, p0, Lcom/instagram/j/c;->a:J
invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V
const-string v0, "bytes_transmitted"
iget-wide v1, p0, Lcom/instagram/j/c;->b:J
invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V
const-string v0, "online_duration_in_s"
iget-wide v1, p0, Lcom/instagram/j/c;->c:J
const-wide/16 v3, 0x3e8
div-long/2addr v1, v3
invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
return-void
.end method