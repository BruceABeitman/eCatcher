.class final Lcom/bbm/ui/c/fi;
.super Lcom/bbm/d/b/m;
.source "ProfileUpdatesFragment.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/bbm/ui/c/fh;
.method constructor <init>(Lcom/bbm/ui/c/fh;Lcom/bbm/j/r;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/c/fi;->b:Lcom/bbm/ui/c/fh;
iput-object p3, p0, Lcom/bbm/ui/c/fi;->a:Ljava/lang/String;
invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)Z
.registers 4
check-cast p1, Lcom/bbm/d/fz;
iget-object v0, p0, Lcom/bbm/ui/c/fi;->a:Ljava/lang/String;
iget-object v1, p1, Lcom/bbm/d/fz;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p1, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
sget-object v1, Lcom/bbm/d/ga;->c:Lcom/bbm/d/ga;
if-ne v0, v1, :cond_1a
iget-object v0, p1, Lcom/bbm/d/fz;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1c
:cond_1a
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method