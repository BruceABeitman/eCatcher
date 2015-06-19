.class public final Lcom/millennialmedia/a/a/o;
.super Lcom/millennialmedia/a/a/m;
.source "SourceFile"
.field public static final a:Lcom/millennialmedia/a/a/o;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/millennialmedia/a/a/o;
invoke-direct {v0}, Lcom/millennialmedia/a/a/o;-><init>()V
sput-object v0, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/m;-><init>()V
return-void
.end method
.method  a()Lcom/millennialmedia/a/a/o;
.registers 2
sget-object v0, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
if-eq p0, p1, :cond_6
instance-of v0, p1, Lcom/millennialmedia/a/a/o;
if-eqz v0, :cond_8
:cond_6
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public hashCode()I
.registers 2
const-class v0, Lcom/millennialmedia/a/a/o;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
return v0
.end method
.method synthetic o()Lcom/millennialmedia/a/a/m;
.registers 2
invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->a()Lcom/millennialmedia/a/a/o;
move-result-object v0
return-object v0
.end method