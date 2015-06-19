.class public Lcom/ubermedia/model/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "prev_id"
.field public static final b:Ljava/lang/String; = "next_id"
.field public static final c:Ljava/lang/String; = "prev_timestamp"
.field public static final d:Ljava/lang/String; = "next_timestamp"
.field public static final e:Ljava/lang/String; = "timeline"
.field public static final f:Ljava/lang/String; = "account_id"
.field public static final g:[Ljava/lang/String;
.field private h:J
.field private i:J
.field private j:J
.field private k:J
.field private l:Ljava/lang/String;
.field private m:J
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "timeline"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "account_id"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "next_id"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "prev_id"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "prev_timestamp"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "next_timestamp"
aput-object v2, v0, v1
sput-object v0, Lcom/ubermedia/model/a;->g:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;JJJJJ)V
.registers 12
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p6, p0, Lcom/ubermedia/model/a;->h:J
iput-wide p4, p0, Lcom/ubermedia/model/a;->i:J
iput-wide p10, p0, Lcom/ubermedia/model/a;->j:J
iput-wide p8, p0, Lcom/ubermedia/model/a;->k:J
iput-object p1, p0, Lcom/ubermedia/model/a;->l:Ljava/lang/String;
iput-wide p2, p0, Lcom/ubermedia/model/a;->m:J
return-void
.end method
.method public a()J
.registers 3
iget-wide v0, p0, Lcom/ubermedia/model/a;->h:J
return-wide v0
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/ubermedia/model/a;->h:J
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/ubermedia/model/a;->l:Ljava/lang/String;
return-void
.end method
.method public b()J
.registers 3
iget-wide v0, p0, Lcom/ubermedia/model/a;->i:J
return-wide v0
.end method
.method public b(J)V
.registers 3
iput-wide p1, p0, Lcom/ubermedia/model/a;->i:J
return-void
.end method
.method public c()J
.registers 3
iget-wide v0, p0, Lcom/ubermedia/model/a;->j:J
return-wide v0
.end method
.method public c(J)V
.registers 3
iput-wide p1, p0, Lcom/ubermedia/model/a;->j:J
return-void
.end method
.method public d()J
.registers 3
iget-wide v0, p0, Lcom/ubermedia/model/a;->k:J
return-wide v0
.end method
.method public d(J)V
.registers 3
iput-wide p1, p0, Lcom/ubermedia/model/a;->k:J
return-void
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/model/a;->l:Ljava/lang/String;
return-object v0
.end method
.method public e(J)V
.registers 3
iput-wide p1, p0, Lcom/ubermedia/model/a;->m:J
return-void
.end method
.method public f()J
.registers 3
iget-wide v0, p0, Lcom/ubermedia/model/a;->m:J
return-wide v0
.end method