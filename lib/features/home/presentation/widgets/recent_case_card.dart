import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class RecentCaseCard extends StatelessWidget {
  final String title;
  final String caseId;
  final String status;
  final Color statusColor;
  final Color statusBgColor;
  final String? lawyerName;
  final String? lawyerAction;
  final String? lawyerImage;
  final IconData icon;
  final bool hasActions;
  final bool isSearching;
  final double? searchProgress;

  const RecentCaseCard({
    super.key,
    required this.title,
    required this.caseId,
    required this.status,
    required this.statusColor,
    required this.statusBgColor,
    this.lawyerName,
    this.lawyerAction,
    this.lawyerImage,
    required this.icon,
    this.hasActions = false,
    this.isSearching = false,
    this.searchProgress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AttorniumTheme.whiteCard,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: const BoxDecoration(
                  color: AttorniumTheme.navy900,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: AttorniumTheme.gold500, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'เลขที่คดี: $caseId',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: statusBgColor,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (!isSearching) ...[
                      Icon(Icons.check_circle, color: statusColor, size: 16),
                      const SizedBox(width: 6),
                    ] else ...[
                      Icon(Icons.schedule, color: statusColor, size: 16),
                      const SizedBox(width: 6),
                    ],
                    Text(
                      status,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: statusColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (lawyerName != null) ...[
            const SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: lawyerImage != null ? NetworkImage(lawyerImage!) : null,
                  backgroundColor: AttorniumTheme.border,
                  child: lawyerImage == null ? const Icon(Icons.person, color: AttorniumTheme.textMuted) : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(
                          text: '$lawyerName ',
                          style: const TextStyle(
                            color: AttorniumTheme.info,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(text: lawyerAction ?? ''),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
          if (hasActions) ...[
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.description_outlined, size: 20),
                    label: const Text('รายละเอียด'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.chat_outlined, size: 20),
                    label: const Text('แชทกับทนาย'),
                  ),
                ),
              ],
            ),
          ],
          if (isSearching) ...[
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AttorniumTheme.border),
                  ),
                  child: const Icon(Icons.search, color: AttorniumTheme.textPrimary, size: 16),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'กำลังค้นหาทนายที่เหมาะสมที่สุด...',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AttorniumTheme.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: searchProgress,
                      backgroundColor: AttorniumTheme.border,
                      valueColor: const AlwaysStoppedAnimation<Color>(AttorniumTheme.gold500),
                      minHeight: 8,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  '${((searchProgress ?? 0) * 100).toInt()}%',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AttorniumTheme.gold500,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
