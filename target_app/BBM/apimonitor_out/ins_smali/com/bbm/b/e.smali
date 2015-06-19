.class public final Lcom/bbm/b/e;
.super Ljava/lang/Object;
.source "AdUtils.java"
.field public static final a:Lcom/bbm/b/aj;
.field public static final b:Lcom/bbm/b/aj;
.field private static c:I
.field private static final d:Lcom/bbm/b/q;
.field private static final e:Lcom/bbm/f/ac;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput v0, Lcom/bbm/b/e;->c:I
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sput-object v0, Lcom/bbm/b/e;->d:Lcom/bbm/b/q;
sget-object v0, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;
sput-object v0, Lcom/bbm/b/e;->a:Lcom/bbm/b/aj;
sget-object v0, Lcom/bbm/b/aj;->b:Lcom/bbm/b/aj;
sput-object v0, Lcom/bbm/b/e;->b:Lcom/bbm/b/aj;
new-instance v0, Lcom/bbm/b/h;
invoke-direct {v0}, Lcom/bbm/b/h;-><init>()V
sput-object v0, Lcom/bbm/b/e;->e:Lcom/bbm/f/ac;
return-void
.end method
.method public static a(Ljava/util/List;)Lcom/bbm/b/a;
.registers 10
const/4 v1, 0x0
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_5
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/b/a;
iget-boolean v3, v0, Lcom/bbm/b/a;->l:Z
if-nez v3, :cond_2f
iget-wide v3, v0, Lcom/bbm/b/a;->e:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
const-wide/16 v7, 0x3e8
div-long/2addr v5, v7
cmp-long v3, v3, v5
if-lez v3, :cond_2f
if-eqz v1, :cond_2c
iget-wide v3, v1, Lcom/bbm/b/a;->e:J
iget-wide v5, v0, Lcom/bbm/b/a;->e:J
cmp-long v3, v3, v5
if-lez v3, :cond_2f
:cond_2c
:goto_2c
move-object v1, v0
goto :goto_5
:cond_2e
return-object v1
:cond_2f
move-object v0, v1
goto :goto_2c
.end method
.method public static a(Lcom/bbm/b/c;Lcom/bbm/b/b;Z)Lcom/bbm/b/p;
.registers 4
sget-object v0, Lcom/bbm/b/c;->c:Lcom/bbm/b/c;
if-eq p0, v0, :cond_8
sget-object v0, Lcom/bbm/b/b;->c:Lcom/bbm/b/b;
if-ne p1, v0, :cond_b
:cond_8
sget-object v0, Lcom/bbm/b/p;->f:Lcom/bbm/b/p;
:goto_a
return-object v0
:cond_b
sget-object v0, Lcom/bbm/b/c;->b:Lcom/bbm/b/c;
if-ne p0, v0, :cond_1d
sget-object v0, Lcom/bbm/b/b;->a:Lcom/bbm/b/b;
if-ne p1, v0, :cond_16
sget-object v0, Lcom/bbm/b/p;->a:Lcom/bbm/b/p;
goto :goto_a
:cond_16
sget-object v0, Lcom/bbm/b/b;->b:Lcom/bbm/b/b;
if-ne p1, v0, :cond_34
sget-object v0, Lcom/bbm/b/p;->b:Lcom/bbm/b/p;
goto :goto_a
:cond_1d
sget-object v0, Lcom/bbm/b/c;->a:Lcom/bbm/b/c;
if-ne p0, v0, :cond_34
sget-object v0, Lcom/bbm/b/b;->a:Lcom/bbm/b/b;
if-ne p1, v0, :cond_28
sget-object v0, Lcom/bbm/b/p;->c:Lcom/bbm/b/p;
goto :goto_a
:cond_28
sget-object v0, Lcom/bbm/b/b;->b:Lcom/bbm/b/b;
if-ne p1, v0, :cond_34
if-eqz p2, :cond_31
sget-object v0, Lcom/bbm/b/p;->d:Lcom/bbm/b/p;
goto :goto_a
:cond_31
sget-object v0, Lcom/bbm/b/p;->e:Lcom/bbm/b/p;
goto :goto_a
:cond_34
sget-object v0, Lcom/bbm/b/p;->f:Lcom/bbm/b/p;
goto :goto_a
.end method
.method public static a()V
.registers 1
new-instance v0, Lcom/bbm/b/n;
invoke-direct {v0}, Lcom/bbm/b/n;-><init>()V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V
.registers 2
invoke-static {p0, p1}, Lcom/bbm/b/e;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public static a(Lcom/bbm/b/a;Lcom/bbm/ui/activities/MainActivity;)V
.registers 13
const v8, 0x7f020346
const v0, 0x7f0200f4
const v1, 0x7f02001d
const/4 v10, 0x0
const/4 v2, 0x0
iget-object v5, p1, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
const-string v3, ""
sget-object v4, Lcom/bbm/b/o;->a:[I
invoke-static {p0}, Lcom/bbm/b/e;->b(Lcom/bbm/b/a;)Lcom/bbm/b/p;
move-result-object v7
invoke-virtual {v7}, Lcom/bbm/b/p;->ordinal()I
move-result v7
aget v4, v4, v7
packed-switch v4, :pswitch_data_14a
move-object v0, v2
move-object v1, v3
:goto_25
new-instance v3, Lcom/bbm/ui/slidingmenu/a;
iget-object v4, p0, Lcom/bbm/b/a;->q:Ljava/lang/String;
invoke-direct {v3, v2, v4, v1}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v4, 0x7f020262
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const v7, 0x7f0e0751
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
iget-object v9, p0, Lcom/bbm/b/a;->q:Ljava/lang/String;
aput-object v9, v8, v10
invoke-virtual {p1, v7, v8}, Lcom/bbm/ui/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v1, v4, v7, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v4, p0, Lcom/bbm/b/a;->m:Z
if-eqz v4, :cond_63
new-instance v4, Lcom/bbm/ui/slidingmenu/a;
const v7, 0x7f0a002f
const v8, 0x7f02027c
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
const v9, 0x7f0e068e
invoke-virtual {p1, v9}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-direct {v4, v7, v8, v9, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_63
invoke-virtual {v5, v6, v3, v1}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
if-eqz v0, :cond_70
new-instance v1, Lcom/bbm/b/i;
invoke-direct {v1, p0, v5, v3, v0}, Lcom/bbm/b/i;-><init>(Lcom/bbm/b/a;Lcom/bbm/ui/c/fm;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
invoke-static {v1}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
:cond_70
new-instance v0, Lcom/bbm/b/j;
invoke-direct {v0, p1, p0}, Lcom/bbm/b/j;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/b/a;)V
iput-object v0, v5, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
new-instance v0, Lcom/bbm/b/k;
invoke-direct {v0, p1, p0}, Lcom/bbm/b/k;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/b/a;)V
invoke-virtual {v5, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V
iget-boolean v0, p0, Lcom/bbm/b/a;->n:Z
if-nez v0, :cond_b0
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "AdUtils: Ad="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/b/a;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " Viewed through context menu"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v10, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sget-object v1, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;
sget-object v2, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;
iget-object v3, p0, Lcom/bbm/b/a;->h:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_b0
invoke-virtual {p1}, Lcom/bbm/ui/activities/MainActivity;->o()V
return-void
:pswitch_b4
const v0, 0x7f0e00f3
invoke-virtual {p1, v0}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v3, 0x7f0a002b
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const v7, 0x7f0e0496
invoke-virtual {p1, v7}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v1, v3, v4, v7, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object v1, v0
move-object v0, v2
goto/16 :goto_25
:pswitch_d5
const v0, 0x7f0e00f3
invoke-virtual {p1, v0}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v3, 0x7f0a002e
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const v7, 0x7f0e0555
invoke-virtual {p1, v7}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v1, v3, v4, v7, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object v1, v0
move-object v0, v2
goto/16 :goto_25
:pswitch_f6
const v3, 0x7f0e00f1
invoke-virtual {p1, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
new-instance v3, Lcom/bbm/ui/slidingmenu/a;
const v7, 0x7f0a002d
iget-boolean v8, p0, Lcom/bbm/b/a;->f:Z
if-eqz v8, :cond_11e
:goto_106
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
const v1, 0x7f0e04bc
invoke-virtual {p1, v1}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v7, v0, v1, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3, v10}, Lcom/bbm/ui/slidingmenu/a;->e(Z)V
invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object v0, v3
move-object v1, v4
goto/16 :goto_25
:cond_11e
move v0, v1
goto :goto_106
:pswitch_120
const v3, 0x7f0e00f1
invoke-virtual {p1, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
new-instance v3, Lcom/bbm/ui/slidingmenu/a;
const v7, 0x7f0a002c
iget-boolean v8, p0, Lcom/bbm/b/a;->f:Z
if-eqz v8, :cond_148
:goto_130
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
const v1, 0x7f0e0496
invoke-virtual {p1, v1}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v7, v0, v1, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3, v10}, Lcom/bbm/ui/slidingmenu/a;->e(Z)V
invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object v0, v3
move-object v1, v4
goto/16 :goto_25
:cond_148
move v0, v1
goto :goto_130
:pswitch_data_14a
.packed-switch 0x1
:pswitch_b4
:pswitch_d5
:pswitch_d5
:pswitch_f6
:pswitch_120
.end packed-switch
.end method
.method public static a(Lcom/bbm/b/aj;Ljava/lang/String;Z)V
.registers 5
if-nez p2, :cond_f
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sget-object v1, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;
invoke-static {v1, p0, p1}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_f
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sget-object v1, Lcom/bbm/b/ai;->c:Lcom/bbm/b/ai;
invoke-static {v1, p0, p1}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
return-void
.end method
.method public static a(Ljava/lang/String;Landroid/app/Activity;)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "com.bbm.onlyone"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "com.bbm.adidtoshare"
invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/16 v1, 0x8
invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Landroid/app/Activity;)V
.registers 4
invoke-static {p0, p1, p2, p3}, Lcom/bbm/b/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Landroid/app/Activity;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Z)V
.registers 8
const/4 v3, 0x0
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_26
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Failed to open the ad URL because it was empty; adId="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " context="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_25
return-void
:cond_26
invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
if-nez v0, :cond_55
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Failed to open the ad URL because it couldn\'t be parsed; adId="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " context="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " url="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_25
:cond_55
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v0, 0x1000
invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
:try_start_61
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/bbm/Alaska;->startActivity(Landroid/content/Intent;)V
:try_end_68
.catch Landroid/content/ActivityNotFoundException; {:try_start_61 .. :try_end_68} :catch_85
if-nez p3, :cond_77
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sget-object v1, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;
invoke-static {v1, p2, p1}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_77
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sget-object v1, Lcom/bbm/b/ai;->d:Lcom/bbm/b/ai;
invoke-static {v1, p2, p1}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
goto :goto_25
:catch_85
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Failed to open the ad URL; adId="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " context="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " url="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_25
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;ZLcom/bbm/b/aj;Landroid/app/Activity;)V
.registers 11
if-nez p2, :cond_f
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sget-object v1, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;
invoke-static {v1, p3, p1}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_f
invoke-static {}, Lcom/bbm/util/ac;->b()Z
move-result v0
if-eqz v0, :cond_29
new-instance v5, Lcom/bbm/ui/b/a;
invoke-direct {v5, p4}, Lcom/bbm/ui/b/a;-><init>(Landroid/app/Activity;)V
new-instance v0, Lcom/bbm/b/f;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/bbm/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Landroid/app/Activity;Lcom/bbm/ui/b/a;)V
iput-object v0, v5, Lcom/bbm/ui/b/a;->a:Lcom/bbm/ui/b/f;
invoke-virtual {v5}, Lcom/bbm/ui/b/a;->show()V
:goto_28
return-void
:cond_29
invoke-static {p0, p1, p3, p4}, Lcom/bbm/b/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Landroid/app/Activity;)V
goto :goto_28
.end method
.method public static a(Lcom/bbm/b/a;)Z
.registers 2
iget-object v0, p0, Lcom/bbm/b/a;->j:Lorg/json/JSONObject;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/bbm/b/a;->j:Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static a(Ljava/lang/String;)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v2, 0x1
:try_start_3
new-array v2, v2, [Lorg/json/JSONObject;
const/4 v3, 0x0
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
const-string v5, "id"
invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v2}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;
move-result-object v2
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v3
const-string v4, "ad"
invoke-static {v2, v4}, Lcom/bbm/b/v;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/b/af;
move-result-object v2
invoke-virtual {v3, v2}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:try_end_24
.catch Lorg/json/JSONException; {:try_start_3 .. :try_end_24} :catch_25
:goto_24
return v0
:catch_25
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
move v0, v1
goto :goto_24
.end method
.method public static b(Lcom/bbm/b/a;)Lcom/bbm/b/p;
.registers 4
if-nez p0, :cond_5
sget-object v0, Lcom/bbm/b/p;->f:Lcom/bbm/b/p;
:goto_4
return-object v0
:cond_5
iget-object v0, p0, Lcom/bbm/b/a;->s:Lcom/bbm/b/c;
iget-object v1, p0, Lcom/bbm/b/a;->r:Lcom/bbm/b/b;
invoke-static {p0}, Lcom/bbm/b/e;->a(Lcom/bbm/b/a;)Z
move-result v2
invoke-static {v0, v1, v2}, Lcom/bbm/b/e;->a(Lcom/bbm/b/c;Lcom/bbm/b/b;Z)Lcom/bbm/b/p;
move-result-object v0
goto :goto_4
.end method
.method public static b()V
.registers 2
new-instance v0, Lcom/bbm/b/ag;
invoke-direct {v0}, Lcom/bbm/b/ag;-><init>()V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/bbm/b/ag;->a(Z)Lcom/bbm/b/ag;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->a:Lcom/bbm/b/q;
invoke-virtual {v1, v0}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
return-void
.end method
.method public static b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V
.registers 2
invoke-static {p0, p1}, Lcom/bbm/b/e;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public static b(Lcom/bbm/b/aj;Ljava/lang/String;Z)V
.registers 5
if-nez p2, :cond_f
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sget-object v1, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;
invoke-static {v1, p0, p1}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_f
return-void
.end method
.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Landroid/app/Activity;)V
.registers 7
sget-object v0, Lcom/bbm/d/az;->f:Lcom/bbm/d/az;
invoke-static {p0, v0}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/az;)Lcom/bbm/d/ay;
move-result-object v0
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_b
const-string v2, "adId"
invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "context"
invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_15
.catch Lorg/json/JSONException; {:try_start_b .. :try_end_15} :catch_3e
const-string v2, "ad"
invoke-virtual {v0, v2, v1}, Lcom/bbm/d/ay;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/ay;->a(Ljava/lang/String;)Lcom/bbm/d/ay;
new-instance v2, Lcom/bbm/b/g;
invoke-direct {v2, p0, p3, p0}, Lcom/bbm/b/g;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v2, v1, p3}, Lcom/bbm/ui/d/e;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->b()Lcom/bbm/f/a;
move-result-object v1
sget-object v2, Lcom/bbm/b/e;->e:Lcom/bbm/f/ac;
invoke-interface {v1, v2}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:goto_3d
return-void
:catch_3e
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_3d
.end method
.method static synthetic c()Lcom/bbm/f/ac;
.registers 1
sget-object v0, Lcom/bbm/b/e;->e:Lcom/bbm/f/ac;
return-object v0
.end method
.method private static c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V
.registers 13
const/high16 v1, 0x43be
const/high16 v10, 0x43f0
const/high16 v9, 0x43b4
const/high16 v2, 0x4398
const/high16 v0, 0x43ab
sget v3, Lcom/bbm/b/e;->c:I
if-nez v3, :cond_63
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v4, v4
iget v5, v3, Landroid/util/DisplayMetrics;->density:F
div-float/2addr v4, v5
iget v5, v3, Landroid/util/DisplayMetrics;->density:F
float-to-double v5, v5
const-wide/high16 v7, 0x4008
cmpl-double v5, v5, v7
if-ltz v5, :cond_6e
:goto_25
:cond_25
iget v1, v3, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v1, v0
float-to-int v1, v1
rem-int/lit8 v2, v1, 0x2
add-int/2addr v1, v2
const/16 v2, 0x402
if-le v1, v2, :cond_32
const/16 v1, 0x402
:cond_32
sput v1, Lcom/bbm/b/e;->c:I
const-string v2, "updateCreativeAdImageLayoutParams: display density=%.1f, width px=%d, width dp=%.4f, viewport width dp=%.4f, width px=%d"
const/4 v5, 0x5
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
iget v7, v3, Landroid/util/DisplayMetrics;->density:F
invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v5, v6
const/4 v3, 0x2
invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v4
aput-object v4, v5, v3
const/4 v3, 0x3
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
aput-object v0, v5, v3
const/4 v0, 0x4
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v5, v0
invoke-static {v2, v5}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_63
sget v0, Lcom/bbm/b/e;->c:I
iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
sget v0, Lcom/bbm/b/e;->c:I
div-int/lit8 v0, v0, 0x2
iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
return-void
:cond_6e
iget v5, v3, Landroid/util/DisplayMetrics;->density:F
float-to-double v5, v5
const-wide/high16 v7, 0x4000
cmpl-double v5, v5, v7
if-ltz v5, :cond_a3
const/high16 v5, 0x4407
cmpl-float v5, v4, v5
if-ltz v5, :cond_81
const v0, 0x44004000
goto :goto_25
:cond_81
const v5, 0x43d58000
cmpl-float v5, v4, v5
if-ltz v5, :cond_8c
const v0, 0x43cac000
goto :goto_25
:cond_8c
const/high16 v5, 0x43c8
cmpl-float v5, v4, v5
if-ltz v5, :cond_94
move v0, v1
goto :goto_25
:cond_94
const/high16 v1, 0x43c0
cmpl-float v1, v4, v1
if-ltz v1, :cond_9d
const/high16 v0, 0x43b6
goto :goto_25
:cond_9d
cmpl-float v1, v4, v9
if-gez v1, :cond_25
move v0, v2
goto :goto_25
:cond_a3
iget v5, v3, Landroid/util/DisplayMetrics;->density:F
float-to-double v5, v5
const-wide/high16 v7, 0x3ff8
cmpl-double v5, v5, v7
if-ltz v5, :cond_10f
const/high16 v5, 0x4434
cmpl-float v5, v4, v5
if-ltz v5, :cond_b6
const/high16 v0, 0x442b
goto/16 :goto_25
:cond_b6
const v5, 0x440e547b
cmpl-float v5, v4, v5
if-ltz v5, :cond_c2
const v0, 0x44072ae1
goto/16 :goto_25
:cond_c2
const v5, 0x4405547b
cmpl-float v5, v4, v5
if-ltz v5, :cond_ce
const v0, 0x43fd55c3
goto/16 :goto_25
:cond_ce
const/high16 v5, 0x4400
cmpl-float v5, v4, v5
if-ltz v5, :cond_d9
const v0, 0x43f2aa3d
goto/16 :goto_25
:cond_d9
cmpl-float v5, v4, v10
if-ltz v5, :cond_e1
const/high16 v0, 0x43e4
goto/16 :goto_25
:cond_e1
const v5, 0x43d5547b
cmpl-float v5, v4, v5
if-ltz v5, :cond_ed
const v0, 0x43caaa3d
goto/16 :goto_25
:cond_ed
const/high16 v5, 0x43c8
cmpl-float v5, v4, v5
if-ltz v5, :cond_f6
move v0, v1
goto/16 :goto_25
:cond_f6
cmpl-float v1, v4, v9
if-gez v1, :cond_25
const/high16 v0, 0x43a0
cmpl-float v0, v4, v0
if-gez v0, :cond_140
const/high16 v0, 0x4370
cmpl-float v0, v4, v0
if-ltz v0, :cond_10a
const/high16 v0, 0x4364
goto/16 :goto_25
:cond_10a
const v0, 0x434aab85
goto/16 :goto_25
:cond_10f
iget v1, v3, Landroid/util/DisplayMetrics;->density:F
float-to-double v5, v1
const-wide/high16 v7, 0x3ff0
cmpl-double v1, v5, v7
if-ltz v1, :cond_13c
const/high16 v1, 0x4416
cmpl-float v1, v4, v1
if-ltz v1, :cond_123
const v0, 0x440e8000
goto/16 :goto_25
:cond_123
const/high16 v1, 0x4407
cmpl-float v1, v4, v1
if-ltz v1, :cond_12d
const/high16 v0, 0x4400
goto/16 :goto_25
:cond_12d
cmpl-float v1, v4, v10
if-ltz v1, :cond_135
const/high16 v0, 0x43e4
goto/16 :goto_25
:cond_135
cmpl-float v1, v4, v9
if-gez v1, :cond_25
move v0, v2
goto/16 :goto_25
:cond_13c
cmpl-float v1, v4, v10
if-gez v1, :cond_25
:cond_140
move v0, v2
goto/16 :goto_25
.end method
.method static synthetic d()Lcom/bbm/b/q;
.registers 1
sget-object v0, Lcom/bbm/b/e;->d:Lcom/bbm/b/q;
return-object v0
.end method