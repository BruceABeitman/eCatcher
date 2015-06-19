.class final Lcom/millennialmedia/android/a$1;
.super Lcom/millennialmedia/android/c;
.source "SourceFile"
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Ljava/util/Set;
.method constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/a$1;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/millennialmedia/android/a$1;->b:Ljava/util/Set;
invoke-direct {p0}, Lcom/millennialmedia/android/c;-><init>()V
return-void
.end method
.method  a(Lcom/millennialmedia/android/ai;)Z
.registers 5
const/4 v2, 0x1
iget-object v0, p1, Lcom/millennialmedia/android/ai;->e:Ljava/lang/String;
if-eqz v0, :cond_1a
invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->c()I
move-result v0
if-ne v0, v2, :cond_1a
iget-object v0, p0, Lcom/millennialmedia/android/a$1;->a:Landroid/content/Context;
invoke-virtual {p1, v0}, Lcom/millennialmedia/android/ai;->d(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/millennialmedia/android/a$1;->b:Ljava/util/Set;
iget-object v1, p1, Lcom/millennialmedia/android/ai;->e:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_1a
return v2
.end method