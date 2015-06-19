.class public final Lcom/spotify/mobile/android/ui/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/v4/app/r;)V
    .registers 18

    const-string v1, "dialog_presenter"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_ee

    new-instance v1, Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-direct {v1}, Lcom/spotify/mobile/android/util/DialogPresenter;-><init>()V

    new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/n;

    invoke-direct {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/n;-><init>()V

    new-instance v3, Lcom/spotify/mobile/android/ui/fragments/logic/u;

    invoke-direct {v3}, Lcom/spotify/mobile/android/ui/fragments/logic/u;-><init>()V

    new-instance v4, Lcom/spotify/mobile/android/ui/fragments/logic/v;

    invoke-direct {v4}, Lcom/spotify/mobile/android/ui/fragments/logic/v;-><init>()V

    new-instance v5, Lcom/spotify/mobile/android/ui/fragments/logic/o;

    invoke-direct {v5}, Lcom/spotify/mobile/android/ui/fragments/logic/o;-><init>()V

    new-instance v6, Lcom/spotify/mobile/android/ui/fragments/logic/m;

    invoke-direct {v6}, Lcom/spotify/mobile/android/ui/fragments/logic/m;-><init>()V

    new-instance v7, Lcom/spotify/mobile/android/ui/fragments/logic/d;

    invoke-direct {v7}, Lcom/spotify/mobile/android/ui/fragments/logic/d;-><init>()V

    new-instance v8, Lcom/spotify/mobile/android/ui/fragments/logic/e;

    invoke-direct {v8}, Lcom/spotify/mobile/android/ui/fragments/logic/e;-><init>()V

    new-instance v9, Lcom/spotify/mobile/android/ui/fragments/logic/t;

    invoke-direct {v9}, Lcom/spotify/mobile/android/ui/fragments/logic/t;-><init>()V

    new-instance v10, Lcom/spotify/mobile/android/ui/fragments/logic/a;

    invoke-direct {v10}, Lcom/spotify/mobile/android/ui/fragments/logic/a;-><init>()V

    new-instance v11, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-direct {v11}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;-><init>()V

    new-instance v12, Lcom/spotify/mobile/android/ui/fragments/logic/c;

    invoke-direct {v12}, Lcom/spotify/mobile/android/ui/fragments/logic/c;-><init>()V

    new-instance v13, Lcom/spotify/mobile/android/ui/fragments/logic/k;

    invoke-direct {v13}, Lcom/spotify/mobile/android/ui/fragments/logic/k;-><init>()V

    new-instance v14, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;

    invoke-direct {v14}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "dialog_presenter"

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "trial_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "settings_dialog_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "social_dialog_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "playback_error_dialog_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "offline_sync_error_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "disk_almost_full_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "feature_error_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "tag_remote_playback_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "app_rater_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "cat_feedback_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "tag_connect_onboarding_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "marketing_opt_in_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    const-string v16, "network_operator_premium_activation_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v4/app/w;->b()I

    invoke-virtual {v1, v4}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v5}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v6}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v7}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v8}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v9}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v10}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v11}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v12}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v13}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    invoke-virtual {v1, v14}, Lcom/spotify/mobile/android/util/DialogPresenter;->a(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_ee
    return-void
.end method
