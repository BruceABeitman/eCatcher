.class  Lit/sephiroth/android/library/widget/ExpandableHListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableHListConnector.java"
.implements Landroid/widget/Filterable;
.field  a:Landroid/widget/ExpandableListAdapter;
.field  b:Ljava/util/ArrayList;
.field  c:I
.field private d:I
.field private final e:Landroid/database/DataSetObserver;
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const v0, 0x7fffffff
iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:I
new-instance v0, Lit/sephiroth/android/library/widget/ab;
invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/ab;-><init>(Lit/sephiroth/android/library/widget/ExpandableHListConnector;)V
iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e:Landroid/database/DataSetObserver;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
if-eqz v0, :cond_21
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e:Landroid/database/DataSetObserver;
invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_21
iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e:Landroid/database/DataSetObserver;
invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
return-void
.end method
.method static synthetic a(Lit/sephiroth/android/library/widget/ExpandableHListConnector;)V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(ZZ)V
return-void
.end method
.method final a(I)Lit/sephiroth/android/library/widget/ac;
.registers 11
const/4 v4, 0x0
const/4 v1, 0x2
const/4 v5, 0x0
const/4 v3, -0x1
iget-object v8, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
if-nez v2, :cond_85
move v0, p1
move v2, p1
invoke-static/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ac;->a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ac;
move-result-object v0
:goto_14
return-object v0
:cond_15
:goto_15
if-gt v7, v2, :cond_54
sub-int v0, v2, v7
div-int/lit8 v0, v0, 0x2
add-int v5, v0, v7
invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
move-object v6, v0
check-cast v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iget v0, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I
if-le p1, v0, :cond_2b
add-int/lit8 v7, v5, 0x1
goto :goto_15
:cond_2b
iget v0, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I
if-ge p1, v0, :cond_33
add-int/lit8 v0, v5, -0x1
move v2, v0
goto :goto_15
:cond_33
iget v0, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I
if-ne p1, v0, :cond_40
iget v2, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
move v0, p1
move-object v4, v6
invoke-static/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ac;->a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ac;
move-result-object v0
goto :goto_14
:cond_40
iget v0, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I
if-gt p1, v0, :cond_15
iget v0, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I
add-int/lit8 v0, v0, 0x1
sub-int v3, p1, v0
const/4 v1, 0x1
iget v2, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
move v0, p1
move-object v4, v6
invoke-static/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ac;->a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ac;
move-result-object v0
goto :goto_14
:cond_54
if-le v7, v5, :cond_6c
add-int/lit8 v0, v7, -0x1
invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iget v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I
sub-int v2, p1, v2
iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
add-int/2addr v2, v0
move v5, v7
:goto_66
move v0, p1
invoke-static/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ac;->a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ac;
move-result-object v0
goto :goto_14
:cond_6c
if-ge v2, v5, :cond_7d
add-int/lit8 v5, v2, 0x1
invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iget v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I
sub-int/2addr v0, p1
sub-int/2addr v2, v0
goto :goto_66
:cond_7d
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Unknown state"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_85
move v2, v0
move v7, v5
goto :goto_15
.end method
.method final a(Lit/sephiroth/android/library/widget/ad;)Lit/sephiroth/android/library/widget/ac;
.registers 11
const/4 v8, 0x2
const/4 v5, 0x0
const/4 v4, 0x0
iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v0, v1, -0x1
if-nez v1, :cond_af
iget v0, p1, Lit/sephiroth/android/library/widget/ad;->a:I
iget v1, p1, Lit/sephiroth/android/library/widget/ad;->d:I
iget v2, p1, Lit/sephiroth/android/library/widget/ad;->a:I
iget v3, p1, Lit/sephiroth/android/library/widget/ad;->b:I
invoke-static/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ac;->a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ac;
move-result-object v4
:cond_19
:goto_19
return-object v4
:goto_1a
:cond_1a
if-gt v7, v1, :cond_6d
sub-int v0, v1, v7
div-int/lit8 v0, v0, 0x2
add-int v5, v0, v7
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
move-object v6, v0
check-cast v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iget v0, p1, Lit/sephiroth/android/library/widget/ad;->a:I
iget v3, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
if-le v0, v3, :cond_33
add-int/lit8 v0, v5, 0x1
move v7, v0
goto :goto_1a
:cond_33
iget v0, p1, Lit/sephiroth/android/library/widget/ad;->a:I
iget v3, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
if-ge v0, v3, :cond_3d
add-int/lit8 v0, v5, -0x1
move v1, v0
goto :goto_1a
:cond_3d
iget v0, p1, Lit/sephiroth/android/library/widget/ad;->a:I
iget v3, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
if-ne v0, v3, :cond_1a
iget v0, p1, Lit/sephiroth/android/library/widget/ad;->d:I
if-ne v0, v8, :cond_55
iget v0, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I
iget v1, p1, Lit/sephiroth/android/library/widget/ad;->d:I
iget v2, p1, Lit/sephiroth/android/library/widget/ad;->a:I
iget v3, p1, Lit/sephiroth/android/library/widget/ad;->b:I
move-object v4, v6
invoke-static/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ac;->a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ac;
move-result-object v4
goto :goto_19
:cond_55
iget v0, p1, Lit/sephiroth/android/library/widget/ad;->d:I
const/4 v1, 0x1
if-ne v0, v1, :cond_19
iget v0, v6, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I
iget v1, p1, Lit/sephiroth/android/library/widget/ad;->b:I
add-int/2addr v0, v1
add-int/lit8 v0, v0, 0x1
iget v1, p1, Lit/sephiroth/android/library/widget/ad;->d:I
iget v2, p1, Lit/sephiroth/android/library/widget/ad;->a:I
iget v3, p1, Lit/sephiroth/android/library/widget/ad;->b:I
move-object v4, v6
invoke-static/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ac;->a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ac;
move-result-object v4
goto :goto_19
:cond_6d
iget v0, p1, Lit/sephiroth/android/library/widget/ad;->d:I
if-ne v0, v8, :cond_19
if-le v7, v5, :cond_90
add-int/lit8 v0, v7, -0x1
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iget v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I
iget v2, p1, Lit/sephiroth/android/library/widget/ad;->a:I
iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
sub-int v0, v2, v0
add-int/2addr v0, v1
iget v1, p1, Lit/sephiroth/android/library/widget/ad;->d:I
iget v2, p1, Lit/sephiroth/android/library/widget/ad;->a:I
iget v3, p1, Lit/sephiroth/android/library/widget/ad;->b:I
move v5, v7
invoke-static/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ac;->a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ac;
move-result-object v4
goto :goto_19
:cond_90
if-ge v1, v5, :cond_19
add-int/lit8 v5, v1, 0x1
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iget v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I
iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
iget v2, p1, Lit/sephiroth/android/library/widget/ad;->a:I
sub-int/2addr v0, v2
sub-int v0, v1, v0
iget v1, p1, Lit/sephiroth/android/library/widget/ad;->d:I
iget v2, p1, Lit/sephiroth/android/library/widget/ad;->a:I
iget v3, p1, Lit/sephiroth/android/library/widget/ad;->b:I
invoke-static/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ac;->a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ac;
move-result-object v4
goto/16 :goto_19
:cond_af
move v1, v0
move v7, v5
goto/16 :goto_1a
.end method
.method final a(ZZ)V
.registers 22
move-object/from16 v0, p0
iget-object v12, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v6
const/4 v8, 0x0
const/4 v1, 0x0
move-object/from16 v0, p0
iput v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I
if-eqz p2, :cond_a6
const/4 v7, 0x0
add-int/lit8 v1, v6, -0x1
move v11, v1
:goto_14
if-ltz v11, :cond_a1
invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iget-wide v13, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:J
iget v2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
move-object/from16 v0, p0
iget-object v3, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
invoke-interface {v3}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I
move-result v15
if-eqz v15, :cond_9f
const-wide/high16 v3, -0x8000
cmp-long v3, v13, v3
if-eqz v3, :cond_9f
const/4 v3, 0x0
invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I
move-result v2
add-int/lit8 v3, v15, -0x1
invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I
move-result v3
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v4
const-wide/16 v9, 0x64
add-long v16, v4, v9
const/4 v2, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
move-object/from16 v18, v0
if-eqz v18, :cond_9f
move v4, v3
move v5, v3
:goto_4e
:cond_4e
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v9
cmp-long v9, v9, v16
if-gtz v9, :cond_9f
move-object/from16 v0, v18
invoke-interface {v0, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J
move-result-wide v9
cmp-long v9, v9, v13
if-nez v9, :cond_77
:goto_60
iget v2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
if-eq v5, v2, :cond_e9
const/4 v2, -0x1
if-ne v5, v2, :cond_e7
invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
add-int/lit8 v2, v6, -0x1
:goto_6c
iput v5, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
if-nez v7, :cond_e5
const/4 v1, 0x1
:goto_71
add-int/lit8 v3, v11, -0x1
move v11, v3
move v6, v2
move v7, v1
goto :goto_14
:cond_77
add-int/lit8 v9, v15, -0x1
if-ne v3, v9, :cond_8f
const/4 v9, 0x1
move v10, v9
:goto_7d
if-nez v4, :cond_92
const/4 v9, 0x1
:goto_80
if-eqz v10, :cond_84
if-nez v9, :cond_9f
:cond_84
if-nez v9, :cond_8a
if-eqz v2, :cond_94
if-nez v10, :cond_94
:cond_8a
add-int/lit8 v3, v3, 0x1
const/4 v2, 0x0
move v5, v3
goto :goto_4e
:cond_8f
const/4 v9, 0x0
move v10, v9
goto :goto_7d
:cond_92
const/4 v9, 0x0
goto :goto_80
:cond_94
if-nez v10, :cond_9a
if-nez v2, :cond_4e
if-nez v9, :cond_4e
:cond_9a
add-int/lit8 v4, v4, -0x1
const/4 v2, 0x1
move v5, v4
goto :goto_4e
:cond_9f
const/4 v5, -0x1
goto :goto_60
:cond_a1
if-eqz v7, :cond_a6
invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V
:cond_a6
const/4 v2, 0x0
const/4 v1, 0x0
move v3, v1
move v4, v2
move v5, v8
:goto_ab
if-ge v3, v6, :cond_e4
invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iget v2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I
const/4 v7, -0x1
if-eq v2, v7, :cond_ba
if-eqz p1, :cond_de
:cond_ba
move-object/from16 v0, p0
iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget v7, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
invoke-interface {v2, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I
move-result v2
:goto_c4
move-object/from16 v0, p0
iget v7, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I
add-int/2addr v7, v2
move-object/from16 v0, p0
iput v7, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I
iget v7, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
sub-int v4, v7, v4
add-int/2addr v5, v4
iget v4, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
iput v5, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I
add-int/2addr v2, v5
iput v2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I
add-int/lit8 v1, v3, 0x1
move v3, v1
move v5, v2
goto :goto_ab
:cond_de
iget v2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I
iget v7, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I
sub-int/2addr v2, v7
goto :goto_c4
:cond_e4
return-void
:cond_e5
move v1, v7
goto :goto_71
:cond_e7
move v2, v6
goto :goto_6c
:cond_e9
move v2, v6
move v1, v7
goto :goto_71
.end method
.method final a(Lit/sephiroth/android/library/widget/ac;)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p1, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
if-nez v1, :cond_6
:goto_5
return v0
:cond_6
iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;
iget-object v2, p1, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
invoke-virtual {p0, v0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(ZZ)V
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->notifyDataSetChanged()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget-object v1, p1, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iget v1, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I
invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V
const/4 v0, 0x1
goto :goto_5
.end method
.method public areAllItemsEnabled()Z
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z
move-result v0
return v0
.end method
.method final b(I)Z
.registers 4
const/4 v1, -0x1
const/4 v0, 0x2
invoke-static {v0, p1, v1, v1}, Lit/sephiroth/android/library/widget/ad;->a(IIII)Lit/sephiroth/android/library/widget/ad;
move-result-object v0
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Lit/sephiroth/android/library/widget/ad;)Lit/sephiroth/android/library/widget/ac;
move-result-object v1
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ad;->b()V
if-nez v1, :cond_11
const/4 v0, 0x0
:goto_10
return v0
:cond_11
invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Lit/sephiroth/android/library/widget/ac;)Z
move-result v0
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ac;->a()V
goto :goto_10
.end method
.method public getCount()I
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I
move-result v0
iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I
add-int/2addr v0, v1
return v0
.end method
.method public getFilter()Landroid/widget/Filter;
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
instance-of v1, v0, Landroid/widget/Filterable;
if-eqz v1, :cond_d
check-cast v0, Landroid/widget/Filterable;
invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 6
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ac;
move-result-object v1
iget-object v0, v1, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v0, v0, Lit/sephiroth/android/library/widget/ad;->d:I
const/4 v2, 0x2
if-ne v0, v2, :cond_19
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget-object v2, v1, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v2, v2, Lit/sephiroth/android/library/widget/ad;->a:I
invoke-interface {v0, v2}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;
move-result-object v0
:goto_15
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ac;->a()V
return-object v0
:cond_19
iget-object v0, v1, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v0, v0, Lit/sephiroth/android/library/widget/ad;->d:I
const/4 v2, 0x1
if-ne v0, v2, :cond_2f
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget-object v2, v1, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v2, v2, Lit/sephiroth/android/library/widget/ad;->a:I
iget-object v3, v1, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v3, v3, Lit/sephiroth/android/library/widget/ad;->b:I
invoke-interface {v0, v2, v3}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;
move-result-object v0
goto :goto_15
:cond_2f
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Flat list position is of unknown type"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getItemId(I)J
.registers 8
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ac;
move-result-object v2
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget-object v1, v2, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v1, v1, Lit/sephiroth/android/library/widget/ad;->a:I
invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J
move-result-wide v0
iget-object v3, v2, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v3, v3, Lit/sephiroth/android/library/widget/ad;->d:I
const/4 v4, 0x2
if-ne v3, v4, :cond_1f
iget-object v3, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
invoke-interface {v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J
move-result-wide v0
:goto_1b
invoke-virtual {v2}, Lit/sephiroth/android/library/widget/ac;->a()V
return-wide v0
:cond_1f
iget-object v3, v2, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v3, v3, Lit/sephiroth/android/library/widget/ad;->d:I
const/4 v4, 0x1
if-ne v3, v4, :cond_3b
iget-object v3, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget-object v4, v2, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v4, v4, Lit/sephiroth/android/library/widget/ad;->a:I
iget-object v5, v2, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v5, v5, Lit/sephiroth/android/library/widget/ad;->b:I
invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J
move-result-wide v3
iget-object v5, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
invoke-interface {v5, v0, v1, v3, v4}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J
move-result-wide v0
goto :goto_1b
:cond_3b
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Flat list position is of unknown type"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getItemViewType(I)I
.registers 7
const/4 v4, 0x2
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ac;
move-result-object v1
iget-object v2, v1, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
instance-of v0, v0, Landroid/widget/HeterogeneousExpandableList;
if-eqz v0, :cond_2d
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
check-cast v0, Landroid/widget/HeterogeneousExpandableList;
iget v3, v2, Lit/sephiroth/android/library/widget/ad;->d:I
if-ne v3, v4, :cond_1f
iget v2, v2, Lit/sephiroth/android/library/widget/ad;->a:I
invoke-interface {v0, v2}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I
move-result v0
:goto_1b
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ac;->a()V
return v0
:cond_1f
iget v3, v2, Lit/sephiroth/android/library/widget/ad;->a:I
iget v2, v2, Lit/sephiroth/android/library/widget/ad;->b:I
invoke-interface {v0, v3, v2}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I
move-result v2
invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I
move-result v0
add-int/2addr v0, v2
goto :goto_1b
:cond_2d
iget v0, v2, Lit/sephiroth/android/library/widget/ad;->d:I
if-ne v0, v4, :cond_33
const/4 v0, 0x0
goto :goto_1b
:cond_33
const/4 v0, 0x1
goto :goto_1b
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
const/4 v3, 0x1
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ac;
move-result-object v6
iget-object v0, v6, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v0, v0, Lit/sephiroth/android/library/widget/ad;->d:I
const/4 v1, 0x2
if-ne v0, v1, :cond_1e
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget-object v1, v6, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v1, v1, Lit/sephiroth/android/library/widget/ad;->a:I
invoke-virtual {v6}, Lit/sephiroth/android/library/widget/ac;->b()Z
move-result v2
invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:goto_1a
invoke-virtual {v6}, Lit/sephiroth/android/library/widget/ac;->a()V
return-object v0
:cond_1e
iget-object v0, v6, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v0, v0, Lit/sephiroth/android/library/widget/ad;->d:I
if-ne v0, v3, :cond_3d
iget-object v0, v6, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I
if-ne v0, p1, :cond_3b
:goto_2a
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget-object v1, v6, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v1, v1, Lit/sephiroth/android/library/widget/ad;->a:I
iget-object v2, v6, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v2, v2, Lit/sephiroth/android/library/widget/ad;->b:I
move-object v4, p2
move-object v5, p3
invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_1a
:cond_3b
const/4 v3, 0x0
goto :goto_2a
:cond_3d
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Flat list position is of unknown type"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getViewTypeCount()I
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
instance-of v0, v0, Landroid/widget/HeterogeneousExpandableList;
if-eqz v0, :cond_14
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
check-cast v0, Landroid/widget/HeterogeneousExpandableList;
invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I
move-result v1
invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I
move-result v0
add-int/2addr v0, v1
:goto_13
return v0
:cond_14
const/4 v0, 0x2
goto :goto_13
.end method
.method public hasStableIds()Z
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z
move-result v0
return v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
if-eqz v0, :cond_9
invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x1
goto :goto_8
.end method
.method public isEnabled(I)Z
.registers 6
const/4 v0, 0x1
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ac;
move-result-object v1
iget-object v2, v1, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iget v3, v2, Lit/sephiroth/android/library/widget/ad;->d:I
if-ne v3, v0, :cond_15
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;
iget v3, v2, Lit/sephiroth/android/library/widget/ad;->a:I
iget v2, v2, Lit/sephiroth/android/library/widget/ad;->b:I
invoke-interface {v0, v3, v2}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z
move-result v0
:cond_15
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ac;->a()V
return v0
.end method