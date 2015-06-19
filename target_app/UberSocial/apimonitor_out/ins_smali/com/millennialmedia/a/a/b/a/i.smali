.class public final Lcom/millennialmedia/a/a/b/a/i;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field public static final a:Lcom/millennialmedia/a/a/ab;
.field private final b:Lcom/millennialmedia/a/a/f;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/millennialmedia/a/a/b/a/i$1;
invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/i$1;-><init>()V
sput-object v0, Lcom/millennialmedia/a/a/b/a/i;->a:Lcom/millennialmedia/a/a/ab;
return-void
.end method
.method private constructor <init>(Lcom/millennialmedia/a/a/f;)V
.registers 2
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/i;->b:Lcom/millennialmedia/a/a/f;
return-void
.end method
.method synthetic constructor <init>(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/b/a/i$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/a/i;-><init>(Lcom/millennialmedia/a/a/f;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 5
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/i;->b:Lcom/millennialmedia/a/a/f;
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Class;)Lcom/millennialmedia/a/a/aa;
move-result-object v0
instance-of v1, v0, Lcom/millennialmedia/a/a/b/a/i;
if-eqz v1, :cond_1b
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->d()Lcom/millennialmedia/a/a/d/d;
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->e()Lcom/millennialmedia/a/a/d/d;
goto :goto_5
:cond_1b
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 5
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v1, Lcom/millennialmedia/a/a/b/a/i$2;->a:[I
invoke-virtual {v0}, Lcom/millennialmedia/a/a/d/c;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_6a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:pswitch_15
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V
:goto_1d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z
move-result v1
if-eqz v1, :cond_2b
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/i;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1d
:cond_2b
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V
:goto_2e
return-object v0
:pswitch_2f
new-instance v0, Lcom/millennialmedia/a/a/b/j;
invoke-direct {v0}, Lcom/millennialmedia/a/a/b/j;-><init>()V
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->c()V
:goto_37
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z
move-result v1
if-eqz v1, :cond_49
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/i;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_37
:cond_49
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->d()V
goto :goto_2e
:pswitch_4d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;
move-result-object v0
goto :goto_2e
:pswitch_52
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->k()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_2e
:pswitch_5b
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->i()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_2e
:pswitch_64
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
const/4 v0, 0x0
goto :goto_2e
nop
:pswitch_data_6a
.packed-switch 0x1
:pswitch_15
:pswitch_2f
:pswitch_4d
:pswitch_52
:pswitch_5b
:pswitch_64
.end packed-switch
.end method