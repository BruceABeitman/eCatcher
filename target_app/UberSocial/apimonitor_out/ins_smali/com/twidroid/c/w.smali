.class public Lcom/twidroid/c/w;
.super Lcom/twidroid/c/x;
.source "SourceFile"
.field public static final a:I = 0x3000
.field public static final b:I = 0x3001
.field public static final c:I = 0x3002
.field public static final d:I = 0x3003
.field private static final k:Ljava/lang/String; = "TweetDialog"
.field public e:I
.field private l:Lcom/twidroid/UberSocialApplication;
.field private m:Lcom/twidroid/b/a/b;
.field private n:Lcom/twidroid/ui/a/am;
.method public constructor <init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/c/x;-><init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
const/16 v0, 0x3000
iput v0, p0, Lcom/twidroid/c/w;->e:I
invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
iput-object v0, p0, Lcom/twidroid/c/w;->l:Lcom/twidroid/UberSocialApplication;
iget-object v0, p0, Lcom/twidroid/c/w;->l:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/c/w;->m:Lcom/twidroid/b/a/b;
return-void
.end method
.method static synthetic a(Lcom/twidroid/c/w;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/w;->l:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/c/w;)Lcom/twidroid/ui/a/am;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/w;->n:Lcom/twidroid/ui/a/am;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/c/w;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/w;->m:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method protected a()V
.registers 2
const v0, 0x7f030032
invoke-virtual {p0, v0}, Lcom/twidroid/c/w;->setContentView(I)V
return-void
.end method
.method public a(Lcom/twidroid/ui/a/am;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/w;->n:Lcom/twidroid/ui/a/am;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/c/w; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/c/x;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/twidroid/c/w;->f:Landroid/app/Activity;
const v1, 0x7f0c010e
invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/c/w;->setTitle(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/twidroid/c/w; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 13
const-string v1, " + Lcom/twidroid/c/w; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v6, 0x7f09009e
const/16 v11, 0x8
const/4 v10, 0x0
invoke-super {p0}, Lcom/twidroid/c/x;->onStart()V
const v0, 0x7f0900a4
invoke-virtual {p0, v0}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/twidroid/c/w$1;
invoke-direct {v1, p0}, Lcom/twidroid/c/w$1;-><init>(Lcom/twidroid/c/w;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f09009f
invoke-virtual {p0, v1}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
new-instance v2, Lcom/twidroid/c/w$2;
invoke-direct {v2, p0}, Lcom/twidroid/c/w$2;-><init>(Lcom/twidroid/c/w;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v2, p0, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;
iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->ah:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_123
invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {p0, v6}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V
:goto_3f
const v1, 0x7f0900a5
invoke-virtual {p0, v1}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
new-instance v2, Lcom/twidroid/c/w$3;
invoke-direct {v2, p0}, Lcom/twidroid/c/w$3;-><init>(Lcom/twidroid/c/w;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0900a6
invoke-virtual {p0, v2}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
new-instance v3, Lcom/twidroid/c/w$4;
invoke-direct {v3, p0}, Lcom/twidroid/c/w$4;-><init>(Lcom/twidroid/c/w;)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v3, 0x7f090097
invoke-virtual {p0, v3}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/Button;
new-instance v4, Lcom/twidroid/c/w$5;
invoke-direct {v4, p0}, Lcom/twidroid/c/w$5;-><init>(Lcom/twidroid/c/w;)V
invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v4, 0x7f0900ab
invoke-virtual {p0, v4}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/Button;
new-instance v5, Lcom/twidroid/c/w$6;
invoke-direct {v5, p0}, Lcom/twidroid/c/w$6;-><init>(Lcom/twidroid/c/w;)V
invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v5, 0x7f09009b
invoke-virtual {p0, v5}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/Button;
new-instance v6, Lcom/twidroid/c/w$7;
invoke-direct {v6, p0}, Lcom/twidroid/c/w$7;-><init>(Lcom/twidroid/c/w;)V
invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v6, 0x7f09009d
invoke-virtual {p0, v6}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/Button;
new-instance v7, Lcom/twidroid/c/w$8;
invoke-direct {v7, p0}, Lcom/twidroid/c/w$8;-><init>(Lcom/twidroid/c/w;)V
invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v9, Lcom/twidroid/c/w$a;
invoke-direct {v9, p0}, Lcom/twidroid/c/w$a;-><init>(Lcom/twidroid/c/w;)V
const v7, 0x7f0900a2
invoke-virtual {p0, v7}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/Button;
invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v8, 0x7f0900a3
invoke-virtual {p0, v8}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v8
check-cast v8, Landroid/widget/Button;
invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v9, p0, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;
iget-boolean v9, v9, Lcom/twidroid/model/twitter/Tweet;->aj:Z
if-eqz v9, :cond_12f
invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V
:goto_ce
iget-object v7, p0, Lcom/twidroid/c/w;->m:Lcom/twidroid/b/a/b;
if-eqz v7, :cond_136
iget-object v7, p0, Lcom/twidroid/c/w;->m:Lcom/twidroid/b/a/b;
iget-object v8, p0, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;
iget-wide v8, v8, Lcom/twidroid/model/twitter/Tweet;->C:J
invoke-virtual {v7, v8, v9}, Lcom/twidroid/b/a/b;->d(J)Lcom/twidroid/model/twitter/c;
move-result-object v7
if-eqz v7, :cond_136
invoke-virtual {v3, v10}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v4, v11}, Landroid/widget/Button;->setVisibility(I)V
:goto_e4
const v3, 0x7f09009c
invoke-virtual {p0, v3}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v4}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v4
const-string v7, "@"
invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v4, v4
const/4 v7, 0x1
if-le v4, v7, :cond_13d
invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V
:goto_101
invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V
iget-object v3, p0, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;
iget-boolean v3, v3, Lcom/twidroid/model/twitter/Tweet;->au:Z
if-eqz v3, :cond_144
invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V
:goto_110
invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V
const v0, 0x7f090099
invoke-virtual {p0, v0}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ScrollView;
invoke-virtual {v0, v10, v10}, Landroid/widget/ScrollView;->scrollTo(II)V
const-string v1, " - Lcom/twidroid/c/w; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_123
invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {p0, v6}, Lcom/twidroid/c/w;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_3f
:cond_12f
invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_ce
:cond_136
invoke-virtual {v3, v11}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_e4
:cond_13d
invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V
goto :goto_101
:cond_144
invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_110
.end method