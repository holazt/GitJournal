/*
 * SPDX-FileCopyrightText: 2019-2021 Vishesh Handa <me@vhanda.in>
 *
 * SPDX-License-Identifier: AGPL-3.0-or-later
 */

import 'githost.dart';
import 'github.dart';
import 'gitlab.dart';

export 'githost.dart';

enum GitHostType {
  Unknown,
  GitHub,
  GitLab,
  Custom,
}

GitHost? createGitHost(GitHostType type) {
  switch (type) {
    case GitHostType.GitHub:
      return GitHub();

    case GitHostType.GitLab:
      return GitLab();

    default:
      return null;
  }
}
